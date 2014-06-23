function [score] = multiMeasureModel(tp,corr,incorr,syls,tokens)

% test five functions: local min, global min, arithmetic mean, geometric
% mean, product


for s = 1:length(corr)
  this_corr = corr{s};
  this_incorr = incorr{s};
  
  [c,i] = getTestStats(tp,this_corr,this_incorr,syls);
  
  c_lmin = tokens;
  i_lmin = 0;
    
  c_min = min(c);  
  i_min = min(i);
  
  c_mean = mean(c); 
  i_mean = mean(i);
  
  c_gmean = geomean(abs(c)); 
  i_gmean = geomean(abs(i));
  
  c_prod = prod(c); 
  i_prod = prod(i);
  
  targ(s,:) = [c_lmin c_min c_mean c_gmean c_prod];
  dist(s,:) = [i_lmin i_min i_mean i_gmean i_prod];
  
  ratio(s,:) = targ(s,:) ./ (targ(s,:) + dist(s,:));
end

score = mean(ratio);

% targ
% dist

% ratio
% score = ratio;

% targ = mean(targ);
% dist = mean(dist);