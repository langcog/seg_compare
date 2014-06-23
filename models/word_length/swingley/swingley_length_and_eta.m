load 2010-2-14_swingley_results
load ../../model_materials.mat


%% recollate data

eps = 0.1;
conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};

for e = 1:3
  
  swingley{e}{1} = nan(length(conditions{e}),20,12,3);
  swingley{e}{2} = nan(length(conditions{e}),20,12,3);

  for c = 1:length(conditions{e})
    for s = 1:12
      lens = cellfun(@length,corr{e}{c}{s});
      
      for l = 1:3
        a = cs{e}(lens==l+1,c,s) / 100;
        b = is{e}(lens==l+1,c,s) / 100;
        swingley{e}{1}(c,1:length(a),s,l) = a;
        swingley{e}{2}(c,1:length(b),s,l) = b;
      end
    end
  end
end

save ../swingley.mat swingley