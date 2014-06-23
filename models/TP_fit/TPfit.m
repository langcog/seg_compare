% run the TP models on each of three experiments
clear all;
addpath([pwd '/../TP'])

conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]}; 
tokens = {[100 100 100 100 100 100 100 100],...
  [8 16.6 50 100 150 200],[200 150 120 100 66.7]};
names = {'len','token','vocab'};
num_subs = 12;
lambda = [0 2.^[0:10]];
alphas = [1];
syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ';

%%

for expt = 1:3 % experiments
  fprintf('**** Experiment #%d ****\n',expt);
  [sents{expt},corr{expt},incorr{expt}] = ...
    readInFiles(['../../expts/materials/expt' ...
    num2str(expt) '/'],conditions{expt},names{expt});
  
  for cond = 1:length(conditions{expt})
    for sub = 1:num_subs
      [tps mis lstps] = ...
        findCounts(sents{expt}{cond}{sub},syls,lambda(1));
           
      tp_scores{expt}(cond,:,sub) = multiMeasureModel(tps,corr{expt}{cond}{sub},...
        incorr{expt}{cond}{sub},syls,tokens{expt}(cond));

      for i = 1:length(lambda)
        for j = 1:length(alphas)
          [lstps] = ...
            findSmoothedTP(sents{expt}{cond}{sub},syls,lambda(i));
%           [dstps] = ...
%             findDegradedTP(sents{expt}{cond}{sub},syls,lambda(i));
          lstp_scores{expt}{i}{j}(cond,:,sub)...
            = multiMeasureModelAlpha(lstps,corr{expt}{cond}{sub},...
            incorr{expt}{cond}{sub},syls,tokens{expt}(cond),alphas(j));
%           dstp_scores{expt}{i}{j}(cond,:,sub)...
%             = multiMeasureModelAlpha(dstps,corr{expt}{cond}{sub},...
%             incorr{expt}{cond}{sub},syls,tokens{expt}(cond),alphas(j));
        end
      end
    end
  end  
end


save 4_10_09_lstp_scores.mat