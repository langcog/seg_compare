
nsubs = [12 12 12];
nconds = [8 6 3];

for i = 1:3
  clear mse_last mse_sum mse_bound prob_min prob_mean prob_geomean prob_prod
  [a len b mse_last mse_sum mse_bound prob_min prob_mean prob_geomean prob_prod]...
    = textread(['net_scores'  num2str(i) '.txt'],'%s%n%s%n%n%n%n%n%n%n','delimiter',' ');

  mse_last = reshape(mse_last,nsubs(i),nconds(i));
  mse_sum = reshape(mse_sum,nsubs(i),nconds(i));
  mse_bound = reshape(mse_sum,nsubs(i),nconds(i));
  prob_min = reshape(prob_min,nsubs(i),nconds(i));
  prob_mean = reshape(prob_mean,nsubs(i),nconds(i));
  prob_geomean = reshape(prob_geomean,nsubs(i),nconds(i));
  prob_prod = reshape(prob_prod,nsubs(i),nconds(i));

  srn_s{i} = [mean(mse_last)' mean(mse_sum)' mean(mse_bound)' mean(prob_min)' ...
    mean(prob_mean)' mean(prob_geomean)' mean(prob_prod)'];
end