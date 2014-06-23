clear all
load 4_10_09_lstp_scores.mat
clear corr

load ../../expts/analysis/expt1data.mat
load ../../expts/analysis/expt2data.mat
load ../../expts/analysis/expt3data.mat
addpath('../../comparison')

expt_s{1} = means_expt1;
expt_s{2} = means_expt2;
expt_s{3} = means_expt3;

%% fit

alpha = 5;
all_data = [mean(lstp_scores{1}{alpha}{1}(:,5,:),3); ...
  mean(lstp_scores{2}{alpha}{1}(:,5,:),3); ...
  mean(lstp_scores{3}{alpha}{1}(:,5,:),3)];

all_human = [expt_s{:}]';
fit = pin_fit(all_data,all_human);
fits{1} = fit(1:8);
fits{2} = fit(9:14);
fits{3} = fit(15:end);

%% Graph

conditions = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 4 5 6 9]};
x_conditions = {[1 2 4 6 8 12 24], [100 300 600 900 1200], [3 4 5 6 9]};
axes = {[0 26 .5 1.025],[0 1250 .5 1.025 ],[2 10 .5 1.025 ]};
% xlabs = {'number of words ','number of tokens','number of types'};
xlabs = {'Sentence length (words)','Amount of exposure (tokens)',...
  'Vocabulary size (types)'};
t = [11 500 5];
tp_off = [.1 .1 ; .15 .075; .15 .05];
% ggj_off = [-.12 -.1; -.1 -.075; -.05 -.125]
fittype = 'pin_fit';

figure(1)
clf
set(gcf,'Position',[600 600 750 150]);

for e = 1:3 % experiment
  subplot(1,3,e)
  cla
  set(gca,'FontSize',12)
  data = eval(['means_expt' num2str(e)]);

  % lstps_scores{experiment}{smoothing_param}{choice_param}(:,model,:)
  tp = eval([fittype '(mean(lstp_scores{e}{11}{1}(:,5,:),3),data)']);
%   tp = fits{e};

  hold on
  h(1) = plot(conditions{e},data,'k-','LineWidth',1);
  h(2) = plot(conditions{e},tp,'k--','LineWidth',1);
  
  text(t(e),.59,['r = ' num2str(corr(expt_s{e}',tp),'%2.2f')],'FontSize',12);
%   text(conditions{e}(4),tp(4)+tp_off(e,2),['\bf{r = ' num2str(corr(data',tp),'%2.2f') '}'],...
%     'Color',[0 1 0],'FontSize',16)  
  
  axis(axes{e})
  xlabel([xlabs{e}])
  set(gca,'XTick',x_conditions{e},'XTickLabel',x_conditions{e});
  if e==1
    ylabel('percent correct')
    legend('human','smooth TP')
  end
end


%% and correlations
lambda = [0 2.^[0:10]];

for i = 1:11
  for e = 1:3
    tp = mean(dstp_scores{e}{i}{1}(:,5,:),3);
    corrs(i,e) = corr(expt_s{e}',tp);    
  end
  
  fprintf('%d & %2.2f & %2.2f & %2.2f \\\\\n',lambda(i),corrs(i,:))
end