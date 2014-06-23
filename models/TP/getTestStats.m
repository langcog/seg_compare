function [c,i] = getTestStats(stat,corr,incorr,syls)

for j = 1:length(corr)-1
  from = strfind(syls,corr(j));
  to = strfind(syls,corr(j+1));
  c(j) = stat(from,to);
end

for j = 1:length(incorr)-1
  from = strfind(syls,incorr(j));
  to = strfind(syls,incorr(j+1));
  i(j) = stat(from,to);
end
