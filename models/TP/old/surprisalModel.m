function [score, targ, dist] = surprisalModel(tp,corr,incorr,syls)

for s = 1:length(corr)
  this_corr = corr{s};
  this_incorr = incorr{s};
  
  [c,i] = getTestStats(tp,this_corr,this_incorr,syls);

  log(prod(c))
  log(prod(i))
  
  ratio(s) = log(prod(c))/(log(prod(i))+log(prod(c)))
  targ(s) = log(prod(c));
  dist(s) = log(prod(i));
end

score = mean(ratio);
targ = mean(targ);
dist = mean(dist);