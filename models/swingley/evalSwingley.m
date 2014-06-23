clear all
load ../model_materials.mat
conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};

%syls = 'bBdDtTkKlLgGpPvVzZ';
syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ';

for e = 1:3
  for c = 1:length(conditions{e})
    for s = 1:12
      tic
      [s_swing{e}(c,s) cs{e}(:,c,s), is{e}(:,c,s)] = ...
        swingley(sents{e}{c}{s},corr{e}{c}{s},incorr{e}{c}{s},syls);     
    
      t = toc;
      
      fprintf('cond = %d, sub = %d, time = %2.1f, score = %2.2f\n',...
        c,s,t,s_swing{e}(c,s));
      
      save 2010-2-14_swingley_results.mat s_swing cs is
    end
  end       
end