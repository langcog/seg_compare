function [score] = multiMeasureModelLen(tp,corr,incorr,syls,tokens)

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
  
  targ(s) = c_prod;
  dist(s) = i_prod;
  
  ratio(s) = targ(s) ./ (targ(s) + dist(s));
end

lens = cellfun(@length,corr);


for i = 1:3
  score(i) = mean(ratio(lens==i+1));
end

% targ
% dist

% ratio
% score = ratio;

% targ = mean(targ);
% dist = mean(dist);