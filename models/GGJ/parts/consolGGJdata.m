% consolidation 2-13-08
% added lengths stuff 1-21-10
clear all

data_length;
test = [Test_items{:,2}];
conds = [1 2 3 4 6 8 12 24];

lens = cellfun(@length,Test_items(:,1));

for i = 1:length(conds)
  GGJ_scores{1}{1}(:,i) = mean(Choice_probs(test==conds(i),:));
  GGJ_scores{1}{2}(:,i) = mean(Choice_probs_str(test==conds(i),:));
  
  for j = 1:3
    GGJ_scores_len{1}(:,i,j) = mean(Choice_probs(test==conds(i) & lens'==j+1,:));
  end
end



%%

data_tokens
test = [Test_items{:,2}];
conds = [48 100 300 600 900 1200];

lens = cellfun(@length,Test_items(:,1));
for i = 1:length(conds)
  GGJ_scores{2}{1}(:,i) = mean(Choice_probs(test==conds(i),:));
  GGJ_scores{2}{2}(:,i) = mean(Choice_probs_str(test==conds(i),:));
  
  for j = 1:3
    GGJ_scores_len{2}(:,i,j) = mean(Choice_probs(test==conds(i) & lens'==j+1,:));
  end
end

%%
eps = .1;

data_vocabulary
test = [Test_items{:,2}];
conds = [3 4 5 6 9];

ind = 1:322;
lens = cellfun(@length,Test_items(:,1));
for i = 1:length(conds)
%   GGJ_scores{3}{1}(:,i) = mean(Choice_probs(test==conds(i),:));
  t = Test_probs(test==conds(i) & ind < 322,:);
  d = Dist_probs(test==conds(i) & ind < 322,:);
  GGJ_scores{3}{1}(:,i) = mean(t ./ (t + d + eps));
  
  GGJ_scores{3}{2}(:,i) = mean(Choice_probs_str(test==conds(i),:));
  
  for j = 1:3
    GGJ_scores_len{3}(:,i,j) = mean(Choice_probs(test==conds(i) & lens'==j+1,:));
  end
end

%%
% save ../2008-04-22-GGJdata.mat GGJ_scores

subplot(1,3,1)
plot([1 2 3 4 6 8 12 24],squeeze(GGJ_scores_len{1}(7,:,:)))
subplot(1,3,2)
plot([48 100 300 600 900 1200]',squeeze(GGJ_scores_len{2}(7,:,:)))
subplot(1,3,3)
plot(conds,squeeze(GGJ_scores_len{3}(7,:,:)))
legend('2','3','4')

%%
figure
plot(GGJ_scores{3}{1})