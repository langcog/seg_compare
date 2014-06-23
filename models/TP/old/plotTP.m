function plotTP(tps,syls)

imagesc(tps)
set(gca,'XTick',1:18,'XTickLabel',syls)
set(gca,'YTick',1:18,'YTickLabel',syls)