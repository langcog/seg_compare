%% This analysis is for the goldwater paper 
% it's the second round, comparing models with less data

%% load it
clear all;

load ../expts/analysis/expt1data.mat
load ../expts/analysis/expt2data.mat
load ../expts/analysis/expt3data.mat

load ../models/TP/2009-07-13-less_data_TP.mat
load ../models/GGJ/ggj_less_data7_13_09.mat

% consolidate names
expt_s{1} = means_expt1;
expt_s{2} = means_expt2;
expt_s{3} = means_expt3;

for i = 1:3
  scores(i).tp = mean(lstp_scores{i}{6}(:,5,:),3); % this is the mean
  scores(i).ggj = ggj_less_data{i}(3,:)'; % choose good temp
end

scores(2).tp(1) = .5;

% fit all three at once
all_expt_data = [expt_s{1} expt_s{2} expt_s{3}];
models = fieldnames(scores);

for m = 1:length(models)
  all_scores = [scores(1).(models{m})' scores(2).(models{m})' scores(3).(models{m})'];
  all_fit = pin_fit(all_scores',all_expt_data');
  
  fit_score(1).(models{m}) = all_fit(1:8);
  fit_score(2).(models{m}) = all_fit(9:14);
  fit_score(3).(models{m}) = all_fit(15:end);
end

% graph it
conditions = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 4 5 6 9]};
x_conditions = {[1 2 4 6 8 12 24], [100 300 600 900 1200], [3 4 5 6 9]};
axes = {[0 26 .5 1.025],[0 1250 .5 1.025 ],[2 10 .5 1.025 ]};
t = [11 500 5];
xlabs = {'Sentence length (words)','Amount of exposure (tokens)','Vocabulary size (types)'};
linst = {'k--','k--','k--'};
%mst = {'k--','k:','k;'};
model_names = {'DM-TP - 4% data','Lexical - 4% data'};

fig_seq = [1:3:15 2:3:15 3:3:15];
offs = [-.3 -20 0];

clf
figure(1);
set(gcf,'position',[0 0 750 325])
for i = 1:3
  for model = 1:length(models)
    subplot(2,3,fig_seq(((i-1)*5) + model))
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
      ylabel('Percent correct');
      %line([0 1200],[.5 .5],'LineStyle',':','Color',[0 0 0])
      set(gca,'XTick',x_conditions{i},'XTickLabel',x_conditions{i});
    else
      set(gca,'XTick',conditions{i},'XTickLabel',[])
      set(gca,'YTickLabel',[])
    end
  end
end

%% correlation

all_scores_tp = [scores(1).(models{1})' scores(2).(models{1})' scores(3).(models{1})']';
all_scores_ggj = [scores(1).(models{2})' scores(2).(models{2})' scores(3).(models{2})']';
all_scores_tp(10) = .5;

[r p] = corr(all_scores_tp,all_scores_ggj)

%% 
