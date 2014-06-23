function score = wordProdModel(tp,corr,incorr,syls)

for s = 1:length(corr)
  this_corr = corr{s};
  this_incorr = incorr{s};
  
  [c,i] = getTestStats(tp,this_corr,this_incorr,syls);

  ratio(s) = prod(c)/(prod(i)+prod(c));
end

score = mean(ratio);