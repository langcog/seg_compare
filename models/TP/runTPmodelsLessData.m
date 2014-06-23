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
load ../less_data_model_materials.mat

for e = 1:3 % experiments
  fprintf('**** Experiment #%d ****\n',e);
  
  for c = 1:length(conditions{e})
    fprintf('\t## Condition %d\n',conditions{e}(c));
    
    for s = 1:num_subs
      for l = 1:length(lambda)
        [tps mis lstps] = findCounts(sents{e}{c}{s},syls,lambda(l));
        lstp_scores{e}{l}(c,:,s) = multiMeasureModel(lstps,corr{e}{c}{s},...
          incorr{e}{c}{s},syls,tokens{e}(c));
      end
    end
  end  
end

save 2009-07-13-less_data_TP lstp_scores
