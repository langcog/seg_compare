function plot_types_single(results,x,xlimit,xlab,leg)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

hold on
set(gca,'FontSize', 11);
plot(x,results(:,1),'-','Color',[.5 0 1],'LineWidth',2);
plot(x,results(:,2),'-','Color',[0 0 1],'LineWidth',2);
plot(x,results(:,3),'-','Color',[0 .7 1],'LineWidth',2);
plot(x,results(:,4),'-','Color',[0 1 1],'LineWidth',2);
plot(x,results(:,5),'-','Color',[0 1 0],'LineWidth',2);
plot(x,results(:,6),'-','Color',[0 .6 0],'LineWidth',2);
plot(x,results(:,7),'--','Color',[0 0 0],'LineWidth',2);
legend(leg,'Location','NorthEastOutside','FontSize',10);
%title('Type-limited memory (proportional)');
xlim(xlimit);
ylim([.5,1]);
ylabel('Percent correct');
xlabel(xlab);
set(gca,'xtick', x);
hold off

end

