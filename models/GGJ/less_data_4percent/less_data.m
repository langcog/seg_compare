clear all

expts = {'data_length','data_tokens','data_vocabulary'};

for j = 1:length(expts)
  eval(expts{j});
  
  test = [Test_items{:,2}];
  conds{j} = unique(test);

  for i = 1:length(conds{j})
    scores{j}(:,i) = mean(Choice_probs(test(1:length(Test_items))==conds{j}(i),:));
  end
end

%% plots

figure(1);
for i = 1:3
  subplot(1,3,i);
  plot(repmat(conds{i}',[1 10]),scores{i}');
  axis([min(conds{i}) max(conds{i}) .5 1])
%   title([titles(i) ' - a=1e-6'])
end

%% save
ggj_less_data = scores;
save ggj_less_data7_13_09.mat ggj_less_data