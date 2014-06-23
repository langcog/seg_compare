conds = {[1,2,3,4,6,8,12,24],[48,100,300,600,900,1200],[3,4,5,6,9]};
models = {'type_mem_prop/','type_mem_unif/','tok_mem_unif/','forget_rate/'};
expts = {'length','tokens','vocab'};

c = 1;

for t = 1:5
  parms = strcat('_b20_m50_T',num2str(t),'.dat');

  for m = 1:length(models)
    for e = 1:length(expts)
%       subplot(length(models),length(expts),c)

      results = load(strcat(models{m},expts{e},parms));

      GGJ_online_results{m}{t}{e} = results;
      
%       plot(results);
%       title(models{m}(1:end-1))
%       c = c + 1;
    end
  end
end

save GGJ_online_results_7_13_09.mat GGJ_online_results