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
axes = {[0 26 .4 1.025],[0 1250 .4 1.025 ],[2 10 .4 1.025 ]};
xlabs = {'number of words','number of tokens','number of types'};
titles = {'Sentence length','Amount of exposure','Vocabulary size'}

tp_off = [.1 .1 ; .15 .075; .15 .05];
% ggj_off = [-.12 -.1; -.1 -.075; -.05 -.125]
fittype = 'icept_fit';

figure(1)
clf
for e = 1:3 % experiment
  subplot(2,3,e)
  cla
  set(gca,'FontSize',16)
  data = eval(['means_expt' num2str(e)]);
%   ggj_data = GGJ_scores{e}{1}(1,:)';
%   ggj = eval([fittype '(ggj_data,data)']);
  tp = eval([fittype '(mean(tp_scores{e}(:,3,:),3),data)']);
  
  hold on
  h(1) = plot(conditions{e},data,'k-','LineWidth',1.5);
  h(2) = plot(conditions{e},tp,'g-','LineWidth',1.5);
%   h(3) = plot(conditions{e},ggj,'r-','LineWidth',1.5);
  
  axis(axes{e})
  title(['\bf{' titles{e} '}'])
%   xlabel(xlabs{e})
  
  % put text r values
  text(conditions{e}(4),tp(4)+tp_off(e,1),['\bf{r = ' num2str(corr(data',tp),'%2.2f') '}'],...
    'Color',[0 1 0],'FontSize',16)
%   text(conditions{e}(4),ggj(4)+ggj_off(e,1),['\bf{r = ' num2str(corr(data',ggj),'%2.2f') '}'],...
%     'Color',[1 0 0],'FontSize',16)

  if e==1
    ylabel('percent correct')
    legend('human data','TP','Bayes','Location','SouthWest')
    a = text(-7,.7,'\bf{Unsmoothed Models}','FontSize',16,'Rotation',90,'HorizontalAlignment','Center');
  end
end


which_less_data = [3 4 7];

for e = 1:3 % experiment
  subplot(2,3,e+3)
  cla
  set(gca,'FontSize',16)
  data = eval(['means_expt' num2str(e)]);
%   ggj_data = GGJ_less_data_scores{1}{which_less_data(e)}(1,:)';
  
  if e==2 % missing datapoint on the GGJ 10% for expt 2. 
%     ggj = [NaN; eval([fittype '(ggj_data,data(2:end))'])];
%     correl = corr(data(2:end)',ggj(2:end));
  else
%     ggj = eval([fittype '(ggj_data,data)']);
%     correl = corr(data(1:end)',ggj(1:end));
  end

  tp = eval([fittype '(mean(lstp_scores{e}{3}(:,2,:),3),data)']);
  
  hold on
  h(1) = plot(conditions{e},data,'k-','LineWidth',1.5);
  h(2) = plot(conditions{e},tp,'g-','LineWidth',1.5);
%   h(3) = plot(conditions{e},ggj,'r-','LineWidth',1.5);
  
  % put text r values
  text(conditions{e}(4),tp(4)+tp_off(e,2),['\bf{r = ' num2str(corr(data',tp),'%2.2f') '}'],...
    'Color',[0 1 0],'FontSize',16)  
%   text(conditions{e}(4),ggj(4)+ggj_off(e,2),['\bf{r = ' num2str(correl,'%2.2f') '}'],...
%     'Color',[1 0 0],'FontSize',16)
  
  axis(axes{e})

  %   title(['\bf{' titles{e} '}'])
  
  xlabel([xlabs{e}])
  
  if e==1
    ylabel('percent correct')
    legend('human data','smoothed TP','low-input Bayes','Location','SouthWest')
    a = text(-7,.7,'\bf{Smoothed/Low-Evidence Models}','FontSize',16,'Rotation',90,'HorizontalAlignment','Center');
  end
end



%% first compare TP models

load ../models/TP/2008-05-06-TP_scores.mat

for e = 1:3
  for i = 2:5
    this_model_tp = mean(tp_scores{e}(:,i,:),3);
    this_model_mi = mean(mi_scores{e}(:,i,:),3);

    for j = 1:10
      this_model_stp = mean(stp_scores{e}{j}(:,i,:),3);
      stp_corrs(e,i-1,j) = corr(this_model_stp,eval(['means_expt' num2str(e)])');
    end

    for j = 1:10
      this_model_lstp = mean(lstp_scores{e}{j}(:,i,:),3);
      lstp_corrs(e,i-1,j) = corr(this_model_lstp,eval(['means_expt' num2str(e)])');
    end

    tp_corrs(e,i-1) = corr(this_model_tp,eval(['means_expt' num2str(e)])');
    mi_corrs(e,i-1) = corr(this_model_mi,eval(['means_expt' num2str(e)])');
  end
end

% %% now GGJ
% 
% load ../models/GGJ/2008-04-22-GGJdata.mat
% 
% for e = 1:3
%   for i = 1:10
%     ggj_corrs(e,i) = corr([GGJ_scores{e}{1}(i,:)]',eval(['means_expt' num2str(e)])');
%     ggjp_corrs(e,i) = corr([GGJ_scores{e}{2}(i,:)]',eval(['means_expt' num2str(e)])');
%   end
% end
% 
% %% now do fits
% 
% for e = 1:3
%   models(i).ggj = GGJ_scores{e}{1}(8,:);
% %   models(i).tp = 
% end
% models
% 
% 
% %% consolidate names
% expt_s{1} = means_expt1;
% expt_s{2} = means_expt2;
% expt_s{3} = means_expt3;
% 
% for i = 1:3
%   scores(i).tp = tp_score_means{i};
%   scores(i).mi = mi_score_means{i};
%   scores(i).ggj = GGJ_scores{i}{1}(5,:)'; % choose good temp
%   scores(i).ggj_parts = GGJ_scores{i}{2}(5,:)'; % choose good temp
%   scores(i).swing = mean(s_swing{i},2);
%   scores(i).srn = srn_s{i}(:,4); % use the local minimum, empirical best
%   scores(i).parser = mean(parser_score{i},2);
% end
% 
% %% fit it
% models = fieldnames(scores);
% 
% for expt = 1:3
%   for model = 1:length(models)
%     %fit_score(expt).(models{model}) = pin_fit(scores(expt).(models{model}),expt_s{expt});
%     fit_score(expt).(models{model}) = icept_fit(scores(expt).(models{model}),expt_s{expt});
%     %fit_score(expt).(models{model}) = scores(expt).(models{model});
%   end
% end
% 
% %% graph it
% conditions = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 6 9]};
% x_conditions = {[1 2 3 4 6 8 12 24], [100 300 600 900 1200], [3 6 9]};
% axes = {[0 26 .4 1.025],[0 1250 .4 1.025 ],[2 10 .4 1.025 ]};
% t = [3.5 200 3];
% xlabs = {'Sentence length (words)','Amount of exposure (tokens)','Vocabulary size (types)'};
% linst = {'-r','-g','-b'};
% %mst = {'k--','k:','k;'};
% model_names = {'Transitional Probabilities','Mutual Information','Lexical model','Lexical + parts'...
%   'Swingley2005','SRN','PARSER'}; %  goes before SRN
% 
% for i = 1:3
%   figure(i); clf;
% 
%   set(gcf,'position',[0 0 1200 700])
%   
%   for model = 1:length(models)
%     subplot(2,4,model)
%     set(gca,'FontSize',18);
%     hold on
%    
%     plot(conditions{i},expt_s{i},linst{i},'LineWidth',2);
%     plot(conditions{i},fit_score(i).(models{model}),'-k','LineWidth',2)
%     
%     axis(axes{i});
%     corrs_p(i,model) = corr(fit_score(i).(models{model}),expt_s{i}');
%     corrs_s(i,model) = corr(fit_score(i).(models{model}),expt_s{i}','type','Spearman');
%     title(model_names{model},'FontSize',24);
%     text(t(i),.5,['{\bfr_p=' num2str(corrs_p(i,model),'%2.2f') '}' ...
%       ' {\bfr_s=' num2str(corrs_s(i,model),'%2.2f') '}'],'FontSize',24);
%     hold off
%     
%     if model == 1
%       xlabel(xlabs{i});
%       ylabel('Percent correct');
%       %line([0 1200],[.5 .5],'LineStyle',':','Color',[0 0 0])
%       set(gca,'XTick',x_conditions{i},'XTickLabel',x_conditions{i});
%     else
%       set(gca,'XTick',conditions{i},'XTickLabel',[])
%       set(gca,'YTickLabel',[])
%     end
%   end
% end
% 
% % %% more graphs
% % short_model_names = {'TPs','MIs','GGJ2006',...
% %   'Swingley2005','SRN','PARSER'};
% % short_expts = {'sent. length','exposure','vocab. size'};
% % 
% % figure(4); 
% % clf;
% % set(gcf,'position',[0 0 1200 700])
% % imagesc(corrs)
% % set(gca,'FontSize',26)
% % set(gca,'YTick',[1 2 3],'YTickLabel',short_expts);
% % set(gca,'XTick',[1 2 3 4 5 6],'XTickLabel',short_model_names);
% % 
% % hold on;
% % for i = 1:3
% %   for j = 1:6
% %    if corrs(i,j) > 0
% %       h = text(j-.2,i,num2str(corrs(i,j),'%2.2f'),'FontSize',30,'Color',[0 0 0]);
% %    else
% %       h = text(j-.2,i,num2str(corrs(i,j),'%2.2f'),'FontSize',30,'Color',[1 1 1]);
% %    end
% %     
% %     % bold the best one
% % %     if corrs(i,j) == max(corrs(i,:))
% % %       set(h,'FontWeight','Bold');
% % %       q = rectangle('Curvature',[1 1],'Position',[j-.25 i-.25 .5 .5],'EdgeColor',[1 1 1],'LineWidth',2);
% % %     end
% %   end
% % end
% % 
% % colormap(bone)
% % colorbar
