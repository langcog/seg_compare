%% graph experiments
clear all; 

lens = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 4 5 6 9]};
axes = {[0 26 .4 1.025],[0 1250 .4 1.025 ],[2 10 .4 1.025 ]};
xlabs = {'Sentence length (words)','Amount of exposure (tokens)','Vocabulary size (types)'};
linst = {'-r','-g','-b'};


for i = 1:3
  load(['expt' num2str(i) 'data.mat']);
  figure(i); clf;

  set(gcf,'position',[0 0 1000 600])
  set(gca,'FontSize',18); %,'LineWidth',1.5,'FontWeight','Bold')
  hold on

  if i == 1, 
    data = data_expt1; 
    means = means_expt1;
    data(9,:) = [.99 1.3];
  elseif i == 2, data = data_expt2; means = means_expt2;
  elseif i == 3, data = data_expt3; means = means_expt3;
  end
  
  plot(data(:,2),data(:,1),'ok');
  plot(lens{i},means,linst{i},'LineWidth',2)
  axis(axes{i});
  set(gca,'XTick',lens{i},'XTickLabel',lens{i});
  hold off

  xlabel(xlabs{i});
  ylabel('Percent correct');
  line([0 1200],[.5 .5],'LineStyle',':','Color',[0 0 0])
end