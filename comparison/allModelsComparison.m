%% load it
clear all;

load ../expts/analysis/expt1data.mat
load ../expts/analysis/expt2data.mat
load ../expts/analysis/expt3data.mat

load ../models/TP/mats/2008-05-06-TP_scores.mat
load ../models/GGJ/2008-04-22-GGJdata.mat
load ../models/swingley/2009-7-28_swingley_results.mat; % swingley
load ../models/SRN/2007_08_1_srndata.mat; % SRN
% load ../models/PARSER/data/parser_scores_7_13_09.mat
load ../models/PARSER/data/parser_scores_8_26_09.mat
% load ../models/PARSER/reference/2010-01-24_parser_results_eps.mat
%% consolidate names
expt_s{1} = means_expt1;
expt_s{2} = means_expt2;
expt_s{3} = means_expt3;

%temps = [ 20.0000   10.0000    6.6667    5.0000    4.0000    3.3333
% 2.8571    2.5000 2.2222    2.0000]
% I think this is right...

for i = 1:3
  scores(i).tp = mean(tp_scores{i}(:,5,:),3); % this is the mean
  scores(i).mi = mean(mi_scores{i}(:,5,:),3);
  scores(i).ggj = GGJ_scores{i}{1}(5,:)'; % choose good temp
%   scores(i).ggj_parts = GGJ_scores{i}{2}(5,:)'; % choose good temp
  scores(i).swing = mean(s_swing{i},2);
  scores(i).srn = srn_s{i}(:,4); % use the local minimum, empirical best
  scores(i).parser = mean(parser_scores{i},2);
end

%% fit all three at once
all_expt_data = [expt_s{1} expt_s{2} expt_s{3}];
models = fieldnames(scores);
models(5) = [];

for m = 1:length(models)
  all_scores = [scores(1).(models{m})' scores(2).(models{m})' scores(3).(models{m})'];
  all_fit = pin_fit(all_scores',all_expt_data');
  
  fit_score(1).(models{m}) = all_fit(1:8);
  fit_score(2).(models{m}) = all_fit(9:14);
  fit_score(3).(models{m}) = all_fit(15:end);
end
%% graph it

conditions = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 4 5 6 9]};
x_conditions = {[1 2 4 6 8 12 24], [100 300 600 900 1200], [3 4 5 6 9]};
axes = {[0 26 .5 1.025],[0 1250 .5 1.025 ],[2 10 .5 1.025 ]};
t = [11 500 5];
xlabs = {'Sentence length (words)','Amount of exposure (tokens)','Vocabulary size (types)'};
%mst = {'k--','k:','k;'};
model_names = {'Transitional Probability','Mutual Information','Lexical model',... %,'Lexical + parts'...
  'MI Clustering','PARSER'}; %  goes before SRN

fig_seq = [1:3:15 2:3:15 3:3:15];
offs = [-.3 -20 0];

clf
figure(1);
% set(gcf,'position',[0 0 1200 700])
set(gcf,'position',[0 0 750 800])
for i = 1:3
  for model = 1:length(models)
    subplot(5,3,fig_seq(((i-1)*5) + model))
    set(gca,'FontSize',10);
    hold on
   
    x = conditions{i};
    y_m = fit_score(i).(models{model});
    y_e = expt_s{i}';
    h(1) = plot(x,y_e,'-k','LineWidth',1);
    
    % eliminate missing values
    x(isnan(y_m)) = [];
    y_e(isnan(y_m)) = [];
    y_m(isnan(y_m)) = [];
    h(2) = plot(x+offs(i),y_m,'--k','LineWidth',1);
    
    axis(axes{i});
    corrs_p(i,model) = corr(y_m,y_e);
    corrs_s(i,model) = corr(y_m,y_e,'type','Spearman');
    corrs_p(isnan(corrs_p)) = 0;

    
    if model==1
      title(['\bf{Experiment ' num2str(i) '}'])
    end

    
    if i == 1
      a = text(-10,.75,model_names{model},'rotation',90,'FontSize',10,...
        'FontWeight','bold','HorizontalAlignment','center');
%       title(model_names{model},'FontSize',12);
      
      if model==1
        legend(h,{'human','model'})
      end
    end
%     text(t(i),.5,['{\bfr_p=' num2str(corrs_p(i,model),'%2.2f') '}' ...
%       ' {\bfr_s=' num2str(corrs_s(i,model),'%2.2f') '}'],'FontSize',12);
    text(t(i),.59,['r = ' num2str(corrs_p(i,model),'%2.2f')],'FontSize',12);

hold off
    
    if model == 1
      xlabel(xlabs{i});
      ylabel('Proportion correct');
      %line([0 1200],[.5 .5],'LineStyle',':','Color',[0 0 0])
      set(gca,'XTick',x_conditions{i},'XTickLabel',x_conditions{i});
    else
      set(gca,'XTick',conditions{i},'XTickLabel',[])
      set(gca,'YTickLabel',[])
    end
  end
end

%% make a nice table of correlations
% 
% for i = 1:6
%   fprintf('%s & %2.2f & %2.2f & %2.2f & %2.2f & %2.2f & %2.2f \\\\\n',...
%     model_names{i},corrs_p(1,i),corrs_s(1,i),...
%     corrs_p(2,i),corrs_s(2,i),...
%     corrs_p(3,i),corrs_s(3,i));
% end
% 
%% with just pearson
% for i = [1 2 3 4 6]
%   fprintf('%s & %2.2f & %2.2f & %2.2f \\\\\n',...
%     model_names{i},corrs_p(1,i),corrs_p(2,i),corrs_p(3,i));
% end