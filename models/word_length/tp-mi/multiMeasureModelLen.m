function [targ dist] = multiMeasureModelLen(tp,corr,incorr,syls)


for s = 1:length(corr)
  this_corr = corr{s};
  this_incorr = incorr{s};
  
  [c,i] = getTestStats(tp,this_corr,this_incorr,syls);
  
  targ(s) = prod(c);
  dist(s) = prod(i);
  
  ratio(s) = targ(s) ./ (targ(s) + dist(s));
end

