% run the TP models on each of three experiments
clear all;

conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]}; 
tokens = {[100 100 100 100 100 100 100 100],...
  [8 16.6 50 100 150 200],[200 150 120 100 66.7]};
names = {'len','token','vocab'};
num_subs = 12;
lambda = [1 2 4 8 16 32 64 128 192 256];

syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ';

%%
load ../../model_materials.mat

for expt = 1:3 % experiments
  fprintf('**** Experiment #%d ****\n',expt);
  
  for cond = 1:length(conditions{expt})
    for sub = 1:num_subs
      [tps mis lstps] = ...
        findCounts(sents{expt}{cond}{sub},syls,lambda(1));
            
      [tp_targ{expt}(:,cond,sub) tp_dist{expt}(:,cond,sub)] = multiMeasureModelLen(tps,corr{expt}{cond}{sub},...
        incorr{expt}{cond}{sub},syls);
      [mi_targ{expt}(:,cond,sub) mi_dist{expt}(:,cond,sub)] = multiMeasureModelLen(mis,corr{expt}{cond}{sub},...
        incorr{expt}{cond}{sub},syls);
      
    end
  end  
end

%% collate what we need

for e = 1:3
  
  tp{e}{1} = nan(length(conditions{e}),20,12,3);
  tp{e}{2} = nan(length(conditions{e}),20,12,3);
  mi{e}{1} = nan(length(conditions{e}),20,12,3);
  mi{e}{2} = nan(length(conditions{e}),20,12,3);
  
  for c = 1:length(conditions{e})
    for s = 1:12
      lens = cellfun(@length,corr{e}{c}{s});
      
      for l = 1:3
        a = tp_targ{e}(lens==l+1,c,s);
        b = tp_dist{e}(lens==l+1,c,s);
        tp{e}{1}(c,1:length(a),s,l) = a;
        tp{e}{2}(c,1:length(b),s,l) = b;

        a = mi_targ{e}(lens==l+1,c,s);
        b = mi_dist{e}(lens==l+1,c,s);
        mi{e}{1}(c,1:length(a),s,l) = a;
        mi{e}{2}(c,1:length(b),s,l) = b;

      end
    end
  end
end

save ../tp-mi.mat tp mi