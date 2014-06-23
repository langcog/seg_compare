function [score, targ, dist] = sumModel(tp,corr,incorr,syls)

for s = 1:length(corr)
  this_corr = corr{s};
  this_incorr = incorr{s};
  
  [c,i] = getTestStats(tp,this_corr,this_incorr,syls);

  ratio(s) = sum(c)/(sum(i)+sum(c));
  targ(s) = sum(c);
  dist(s) = sum(i);
end

score = mean(ratio);
targ = mean(targ);
dist = mean(dist);