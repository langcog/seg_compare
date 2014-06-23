%% load it
clear all;

load ../expts/analysis/expt1data.mat
load ../expts/analysis/expt2data.mat
load ../expts/analysis/expt3data.mat

load ../models/TP/mats/2008-05-06-TP_scores.mat
load ../models/GGJ/2008-04-22-GGJdata.mat

%% plots
load ../models/TP/mats/2008-05-06-TP_scores.mat
% load ../models/GGJ/2008-04-22-GGJdata.mat
% load ../models/GGJ/less_data/GGJ_11_7_08.mat

conditions = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 4 5 6 9]};
xt = [100 300 600 900 1200]
axes = {[0 26 .4 1.025],[0 1250 .4 1.025 ],[2 10 .4 1.025 ]};
xlabs = {'number of words','number of tokens','number of types'};
titles = {'Sentence length','Amount of exposure','Vocabulary size'}

tp_off = [.1 .1 ; .15 .075; .15 .05];
fittype = 'icept_fit';


which_less_data = [3 4 7];

e = 2

subplot(1,2,1)
cla
set(gca,'FontSize',16)
data = eval(['means_expt' num2str(e)]);
tp = eval([fittype '(mean(tp_scores{e}(:,2,:),3),data)']);

hold on
h(1) = plot(conditions{e},data,'k-','LineWidth',1.5);
h(2) = plot(conditions{e},tp,'g-','LineWidth',1.5);

% put text r values
text(conditions{e}(4),tp(4)+tp_off(e,2),['\bf{r = ' num2str(corr(data',tp),'%2.2f') '}'],...
  'Color',[0 1 0],'FontSize',16)  
axis(axes{e})

xlabel([xlabs{e}])
set(gca,'XTick',xt)

if e==1
  ylabel('percent correct')
  legend('human data','smoothed TP','low-input Bayes','Location','SouthWest')
  a = text(-7,.7,'\bf{Smoothed/Low-Evidence Models}','FontSize',16,'Rotation',90,'HorizontalAlignment','Center');
end

subplot(1,2,2)
cla
set(gca,'FontSize',16)
data = eval(['means_expt' num2str(e)]);
tp = eval([fittype '(mean(lstp_scores{e}{3}(:,2,:),3),data)']);

hold on
h(1) = plot(conditions{e},data,'k-','LineWidth',1.5);
h(2) = plot(conditions{e},tp,'g-','LineWidth',1.5);

% put text r values
text(conditions{e}(4),tp(4)+tp_off(e,2),['\bf{r = ' num2str(corr(data',tp),'%2.2f') '}'],...
  'Color',[0 1 0],'FontSize',16)  
axis(axes{e})

xlabel([xlabs{e}])
set(gca,'XTick',xt)

if e==1
  ylabel('percent correct')
  legend('human data','smoothed TP','low-input Bayes','Location','SouthWest')
  a = text(-7,.7,'\bf{Smoothed/Low-Evidence Models}','FontSize',16,'Rotation',90,'HorizontalAlignment','Center');
end



