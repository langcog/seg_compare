clear all

load 2010-01-24_parser_results_eps
load ../../model_materials.mat

%% get what we need

conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};

for e = 1:3
  
  parser{e}{1} = nan(length(conditions{e}),20,12,3);
  parser{e}{2} = nan(length(conditions{e}),20,12,3);

  for c = 1:length(conditions{e})
    for s = 1:12
      lens = cellfun(@length,corr{e}{c}{s});
      [corrs incorrs] = evalStateLen(state{e}{c}{s},corr{e}{c}{s},incorr{e}{c}{s});
      
      for l = 1:3
        a = corrs(lens==l+1);
        b = incorrs(lens==l+1);
        parser{e}{1}(c,1:length(a),s,l) = a;
        parser{e}{2}(c,1:length(b),s,l) = b;
      end
    end
  end
end

save ../parser.mat parser
