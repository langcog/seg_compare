function rs = fitCorr(vars,data)

Ys = unique(data(:,1));

for i = 1:length(Ys)
  means(i,1) = mean(data(data(:,1)==Ys(i),2));
end

for i = 1:length(vars);
  vf = fit(vars{i},means);
  rs(i) = corr(vf,means);
end