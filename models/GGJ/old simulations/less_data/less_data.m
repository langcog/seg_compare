clear all

dirs = dir('a*');

for j = 1:2
  cd(['~/matlab/goldwater/models/GGJ/less_data/' dirs(j).name]);
  data_vocabulary_10;
  
  test = [Test_items{:,2}];
  conds = [3 4 5 6 9];
  for i = 1:length(conds)
    scores{j}{1}(:,i) = mean(Choice_probs(test(1:length(Test_items))==conds(i),:));
  end
  
  subplot(2,2,((j-1)*2)+1)
  plot(repmat([3 4 5 6 9]',1,10),scores{j}{1}')
  axis([3 9 .5 1])
  set(gca,'XTick',[3 4 5 6 9])
  title([dirs(j).name ' - 10 sents'])


  data_vocabulary_25;
  
  test = [Test_items{:,2}];
  conds = [3 4 5 6 9];
  for i = 1:length(conds)
    scores{j}{2}(:,i) = mean(Choice_probs(test(1:length(Test_items))==conds(i),:));
  end

  subplot(2,2,((j-1)*2)+2)
  plot(repmat([3 4 5 6 9]',1,10),scores{j}{2}')
  axis([3 9 .5 1])
  set(gca,'XTick',[3 4 5 6 9])
  title([dirs(j).name ' - 25 sents'])
end

cd ..
