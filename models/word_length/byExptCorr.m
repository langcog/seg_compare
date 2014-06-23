function c = byExptCorr(a,b)

c = corr(a(1:8),b(1:8) + corr(a(9:14),b(9:14)) + corr(a(15:end),b(15:end)));