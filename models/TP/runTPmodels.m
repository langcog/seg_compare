% run the TP models on each of three experiments
clear all;

conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]}; 
tokens = {[100 100 100 100 100 100 100 100],...
  [8 16.6 50 100 150 200],[200 150 120 100 66.7]};
names = {'len','token','vocab'};
num_subs = 12;
lambda = [1 2 4 8 16 32 64 128 192 256];

syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ';

%%
load ../model_materials.mat

for expt = 1%:3 % experiments
  fprintf('**** Experiment #%d ****\n',expt);
%   [sents{expt},corr{expt},incorr{expt}] = ...
%     readInFiles(['../../expts/materials/expt' ...
%     num2str(expt) '/'],conditions{expt},names{expt});
  
  for cond = 1:length(conditions{expt})
    for sub = 1:num_subs
      [tps mis lstps] = ...
        findCounts(sents{expt}{cond}{sub},syls,lambda(1));
      
%       if expt == 2
%         eval(['run ./kn/kn_' names{expt} num2str(conditions{expt}(cond),'%04.0f') 'file' ...
%           num2str(sub,'%02.0f') '.m']);
%       elseif expt == 3
%         eval(['run ./kn/kn_' names{expt} num2str(conditions{expt}(cond)) 'file' ...
%           num2str(sub,'%02.0f') '.m']);
%       else
%         eval(['run ./kn/kn_' names{expt} num2str(conditions{expt}(cond),'%02.0f') 'file' ...
%           num2str(sub,'%02.0f') '.m']);
%       end
% 
%       stps = knToNormalMatrix(kn_probs,syllables,syls,discounts);
      
      tp_score = multiMeasureModel(tps,corr{expt}{cond}{sub},...
        incorr{expt}{cond}{sub},syls,tokens{expt}(cond));
      mi_score = multiMeasureModel(mis,corr{expt}{cond}{sub},...
        incorr{expt}{cond}{sub},syls,tokens{expt}(cond));

%       for i = 1:length(stps)
%         stp_score = multiMeasureModel(stps{i},corr{expt}{cond}{sub},...
%           incorr{expt}{cond}{sub},syls,tokens{expt}(cond));
%         stp_scores{expt}{i}(cond,:,sub) = stp_score;            
%       end
%       
%       for i = 1:length(lambda)
%         [tps mis lstps] = ...
%           findCounts(sents{expt}{cond}{sub},syls,lambda(i));
%         lstp_score = multiMeasureModel(lstps,corr{expt}{cond}{sub},...
%           incorr{expt}{cond}{sub},syls,tokens{expt}(cond));
%         lstp_scores{expt}{i}(cond,:,sub) = lstp_score;
%       end
      
      tp_scores{expt}(cond,:,sub) = tp_score;
      mi_scores{expt}(cond,:,sub) = mi_score;        
    end
  end  
end

% save 2008-05-06-TP_scores stp_scores tp_scores mi_scores lstp_scores

%% some plots
% hold on
% lins = {'r','g','b'};
% 
% for i = 1:3
%   plot(1:length(conditions{i}),mean(squeeze(tp_scores{i}(1,:,:)),2),...
%     lins{i},'LineWidth',2)
%   tp_score_means{i} = mean(squeeze(tp_scores{i}(2,:,:)),2);
%   tp_targ_means{i} = mean(squeeze(tp_targs{i}(1,:,:)),2);
% %  tp_dist_means{i} = mean(squeeze(tp_dists{i}(1,:,:)),2);
% end
% 
% mi_score_means = tp_score_means;
% 
% save 2008-1-2-MI_data_amean.mat mi_score_means