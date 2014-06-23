function [score, targ, dist] = localMinModelTemp(tp,corr,incorr,syls,temp)

for s = 1:length(corr)
  this_corr = corr{s};
  this_incorr = incorr{s};
  
  [c,i] = getTestStats(tp,this_corr,this_incorr,syls);

  ratio(s) = exp(temp*min(c))/(exp(temp*min(i))+exp(temp*min(c)));
  targ(s) = prod(c);
  dist(s) = prod(i);
end

score = mean(ratio);
targ = mean(targ);
dist = mean(dist);