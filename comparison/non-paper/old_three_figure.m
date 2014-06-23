conditions = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 4 5 6 9]};
x_conditions = {[1 2 3 4 6 8 12 24], [100 300 600 900 1200], [3 4 5 6 9]};
axes = {[0 26 .4 1.025],[0 1250 .4 1.025 ],[2 10 .4 1.025 ]};
t = [3.5 200 3];
xlabs = {'Sentence length (words)','Amount of exposure (tokens)','Vocabulary size (types)'};
linst = {'-r','-g','-b'};
%mst = {'k--','k:','k;'};
model_names = {'Transitional Probabilities','Mutual Information','Lexical model',... %,'Lexical + parts'...
  'MI Clustering','SRN','PARSER'}; %  goes before SRN

for i = 1:3
  figure(i); clf;

  set(gcf,'position',[0 0 1200 700])
  
  for model = 1:length(models)
    subplot(2,3,model)
    set(gca,'FontSize',18);
    hold on
   
    x = conditions{i};
    y_m = fit_score(i).(models{model});
    y_e = expt_s{i}';
    plot(x,y_e,linst{i},'LineWidth',2);
    
    % eliminate missing values
    x(isnan(y_m)) = [];
    y_e(isnan(y_m)) = [];
    y_m(isnan(y_m)) = [];
    plot(x,y_m,'-k','LineWidth',2)
    
    axis(axes{i});
    corrs_p(i,model) = corr(y_m,y_e);
    corrs_s(i,model) = corr(y_m,y_e,'type','Spearman');
    title(model_names{model},'FontSize',24);
    text(t(i),.5,['{\bfr_p=' num2str(corrs_p(i,model),'%2.2f') '}' ...
      ' {\bfr_s=' num2str(corrs_s(i,model),'%2.2f') '}'],'FontSize',24);
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

