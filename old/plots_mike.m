% plots from mike
% 1.2.07

temps = [50 30 20 15 10 7 5 4 3 2];

data_a20_1;
% data is 4 matrices of 480 points by 10 temperatures, with each group of
% 60 points at one utterance length.
utt_lengths = [1, 2, 3, 4, 6, 8, 12, 24];
t_counts = [];
d_counts = [];
t_probs = [];
d_probs = [];
i2 = 0;

% iterate over each utterance length, with 60 in each group
for len = utt_lengths
  % indices
  i1 = i2+1;
  i2 = i2+60;

  % mean counts and probabilities
  tc = mean(Test_counts(i1:i2,:), 1);
  dc = mean(Dist_counts(i1:i2,:), 1);
  tp = mean(Test_probs(i1:i2,:), 1);  
  dp = mean(Dist_probs(i1:i2,:), 1);  

  t_counts = [t_counts; tc];
  d_counts = [d_counts; dc];
  t_probs = [t_probs; tp];
  d_probs = [d_probs; dp];
end

% calculate proportions
prop_counts = t_counts ./ (t_counts + d_counts);
prop_probs = t_probs ./ (t_probs + d_probs);

% %% 
% subplot(2,2,1);
% plot(repmat(utt_lengths',1,10),prop_counts,'-o');
% legend(leg_temp,'Location','Best');
% axis([0 26 .5 1]);
% 
% subplot(2,2,2);
% plot(repmat(utt_lengths',1,10),prop_probs,'-o');
% axis([0 26 .5 1]);
% 
% subplot(2,2,3);
% plot(repmat(utt_lengths',1,10),t_probs,'-o');
% 
% subplot(2,2,4);
% plot(repmat(utt_lengths',1,10),d_probs,'-o');
% 
% %% fix up graphs
% for i = 1:10
%   leg_temp{i} = num2str(temps(i));
% end
% 
% titles = {'Proportion of items which favor target by count',...
%   'Proportion of items which favor target by probabilities',...
%   'Target probability','Distractor probability'};
% 
% for i = 1:4
%   subplot(2,2,i);
%   xlabel('utterance length');
%   ylabel('probability');
%   title(titles{i}); 
% end
