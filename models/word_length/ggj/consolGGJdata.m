% consolidation 2-13-08
% added lengths stuff 1-21-10
clear all
load ../../model_materials.mat

conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};
expts = {'data_length','data_tokens','data_vocabulary_from_alpha'};

% note that everything from expt 3 is taken from a later set of simulations
% because the test items were wrong. I think this shouldn't matter though?
% -mcf 2/16/10

%%

for e = 1:3
  eval(expts{e});
  test_cond = [Test_items{:,2}]';
  dist_cond = [Dist_items{:,2}]';

  ggj{e}{1} = nan(length(conditions{e}),20,12,3);
  ggj{e}{2} = nan(length(conditions{e}),20,12,3);
  
  if e < 3
    sub = [1:1/6:12*length(conditions{e})+1]';
  else
    sub = [1:1/3:12 12+1/4:1/4:24 24+1/5:1/5:36 36+1/6:1/6:48 48+1/9:1/9:60]';
  end
      
  for c = 1:length(conditions{e})
    for s = 1:12
      
      c_items = corr{e}{c}{s};
      i_items = incorr{e}{c}{s};
      
      % for each item get the probability
      for i = 1:length(c_items)
        % hack because the subject indexing is messed up due to the
        % occasional missing test item
        ss = ((c-1)*12)+s;
        tsub_range = sub(1:length(Test_probs))>=ss-1 & sub(1:length(Test_probs))<=ss+1.7;
        dsub_range = sub(1:length(Dist_probs))>=ss-1 & sub(1:length(Dist_probs))<=ss+1.7;
        
        t_ind = find(strcmp(Test_items(:,1),c_items{i}) ...
          & test_cond==conditions{e}(c) & tsub_range,1);
        d_ind = find(strcmp(Dist_items(:,1),i_items{i}) ...
          & dist_cond==conditions{e}(c) & dsub_range,1);
        cs(i) = Test_probs(t_ind,1);
        is(i) = Dist_probs(d_ind,1);
      end
      
      lens = cellfun(@length,c_items);
      
      for l = 1:3              
        a = cs(lens==l+1);
        b = is(lens==l+1);
        
        ggj{e}{1}(c,1:length(a),s,l) = a;
        ggj{e}{2}(c,1:length(b),s,l) = b;
      end
    end
  end
end

save ../ggj.mat ggj
