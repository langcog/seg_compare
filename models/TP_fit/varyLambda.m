% run the TP models on each of three experiments
clear all;
addpath([pwd '/../TP'])

conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]}; 
tokens = {[100 100 100 100 100 100 100 100],...
  [8 16.6 50 100 150 200],[200 150 120 100 66.7]};
names = {'len','token','vocab'};
num_subs = 12;
lambda = [0 2.^[0:11]];
alpha = 2;

syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ';

%%

for expt = 1:3 % experiments
  fprintf('**** Experiment #%d ****\n',expt);
  [sents{expt},corr{expt},incorr{expt}] = ...
    readInFiles(['../../expts/materials/expt' ...
    num2str(expt) '/'],conditions{expt},names{expt});
  
  for cond = 1:length(conditions{expt})
    for sub = 1:num_subs        
      for i = 1:length(lambda)
        [tps mis lstps] = ...
          findCounts(sents{expt}{cond}{sub},syls,lambda(i));
        lstp_score = multiMeasureModelAlpha(lstps,corr{expt}{cond}{sub},...
          incorr{expt}{cond}{sub},syls,tokens{expt}(cond),alpha);
        lstp_scores{expt}{i}(cond,:,sub) = lstp_score;
      end
    end
  end  
end


%% graph the add-lambda TP

conditions = {[1 2 3 4 6 8 12 24], [48 100 300 600 900 1200], [3 4 5 6 9]};
axes = {[0 26 .4 1.025],[0 1250 .4 1.025 ],[2 10 .4 1.025 ]};
xlabs = {'number of words','number of tokens','number of types'};
titles = {'Sentence length','Amount of exposure','Vocabulary size'};

% tp_off = [.1 .1 ; .15 .075; .15 .05];
% % ggj_off = [-.12 -.1; -.1 -.075; -.05 -.125]
% fittype = 'icept_fit';

figure(1)
clf
for e = 1:3 % experiment
  subplot(1,3,e)
  cla;
  hold on
  set(gca,'FontSize',16)
  
  for l = 1:length(lambda)
    % (1)local min (2)global min (3)mean (4)geomean (5)prod
    tp = mean(lstp_scores{e}{l}(:,5,:),3);
    plot(conditions{e},tp,'k')
  end
  
  axis(axes{e});
  title(['\bf{' titles{e} '}']);

  if e==1
    ylabel('percent correct')
  end

end