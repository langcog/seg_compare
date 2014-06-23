function [score, targ, dist] = localMinModel(tp,corr,incorr,syls)

for s = 1:length(corr)
  this_corr = corr{s};
  this_incorr = incorr{s};
  
  [c,i] = getTestStats(tp,this_corr,this_incorr,syls);

  ratio(s) = min(c)/(min(i)+min(c));
  targ(s) = prod(c);
  dist(s) = prod(i);
end

score = mean(ratio);
targ = mean(targ);
dist = mean(dist);