%% load expts
clear all;

load ../../expts/analysis/expt1data.mat
load ../../expts/analysis/expt2data.mat
load ../../expts/analysis/expt3data.mat

expt_s{1} = means_expt1;
expt_s{2} = means_expt2;
expt_s{3} = means_expt3;

%% load models

load tp-mi.mat
load swingley.mat
load parser.mat
load ggj.mat

%% consolidate model data
models = {'tp','mi','ggj','swingley','parser'};
all_expt_data = [expt_s{1} expt_s{2} expt_s{3}];
eps_range = 0:.1:10;

for m = 1:length(models)
  clear corrs

  mdata{1} = eval([models{m} '{' num2str(1) '}']);
  mdata{2} = eval([models{m} '{' num2str(2) '}']);
  mdata{3} = eval([models{m} '{' num2str(3) '}']);

  getSummedCorr = @(x) byExptCorr(evalChoices(mdata,x)',all_expt_data');
  
  for i = 1:length(eps_range)
    corrs(i) = getSummedCorr(eps_range(i));
  end

  eps(m) = eps_range(corrs==max(corrs));  
end

%% now compute and fit
% fit all three at once

for m = 1:length(models)
  mdata{1} = eval([models{m} '{' num2str(1) '}']);
  mdata{2} = eval([models{m} '{' num2str(2) '}']);
  mdata{3} = eval([models{m} '{' num2str(3) '}']);

  for e = 1:3
    [scores(e).(models{m}) lscores(e).(models{m})] = ...
      getScores(mdata{e}{1},mdata{e}{2},0);        
    [targs(e).(models{m}) dists(e).(models{m})] = ...
      getTargDist(mdata{e}{1},mdata{e}{2});
  end
  
  all_scores = [scores(1).(models{m})' scores(2).(models{m})' scores(3).(models{m})'];
  [all_fit slope icept all_mean] = pin_fit(all_scores',all_expt_data');
  
  fit_score(1).(models{m}) = all_fit(1:8);
  fit_score(2).(models{m}) = all_fit(9:14);
  fit_score(3).(models{m}) = all_fit(15:end);
  
  for e = 1:3
    for i = 1:3
      s = lscores(e).(models{m})(:,i);
      s = ((s - all_mean) .* slope) + icept;
      fit_lscores(e).(models{m})(:,i) = s;
    end
  end
  
end

% graph it
conditions = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 4 5 6 9]};
x_conditions = {[1 2 4 6 8 12 24], [100 300 600 900 1200], [3 4 5 6 9]};
axes = {[0 26 0 1.025],[0 1250 0 1.025 ],[2 10 0 1.025 ]};
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
%     h(1) = plot(x,y_e,'-k','LineWidth',1);
    
    % eliminate missing values
    x(isnan(y_m)) = [];
    y_e(isnan(y_m)) = [];
    y_m(isnan(y_m)) = [];
%     h(2) = plot(x+offs(i),y_m,'--k','LineWidth',1);
    
%     h(3:5) = plot(x+offs(i),fit_lscores(i).(models{model}),'--');
    
    h(1) = plot(x,targs(i).(models{model}),'k-');
    h(2) = plot(x,dists(i).(models{model}),'k--');

    ax = axes{i};
    ax(3) = -.01;
    ax(4) = max(targs(i).(models{model})) *1.1;
    axis(ax);
    corrs_p(i,model) = corr(y_m,y_e);
    corrs_s(i,model) = corr(y_m,y_e,'type','Spearman');
    
    if model==1
      title(['\bf{Experiment ' num2str(i) '}'])
    end

    
    if i == 1
      a = text(-10,ax(4)/2,model_names{model},'rotation',90,'FontSize',10,...
        'FontWeight','bold','HorizontalAlignment','center');
%       title(model_names{model},'FontSize',12);
      
      if model==1
        legend(h,{'targets','distractors'})
      end
    end
%     text(t(i),.5,['{\bfr_p=' num2str(corrs_p(i,model),'%2.2f') '}' ...
%       ' {\bfr_s=' num2str(corrs_s(i,model),'%2.2f') '}'],'FontSize',12);
%     text(t(i),.59,['r = ' num2str(corrs_p(i,model),'%2.2f')],'FontSize',12);

    hold off
    
    if model == 1
      xlabel(xlabs{i});
      ylabel('Relative probability');
      %line([0 1200],[.5 .5],'LineStyle',':','Color',[0 0 0])
      set(gca,'XTick',x_conditions{i},'XTickLabel',x_conditions{i});
      set(gca,'YTickLabel',[])
    else
      set(gca,'XTick',conditions{i},'XTickLabel',[])
      set(gca,'YTickLabel',[])
    end
  end
end