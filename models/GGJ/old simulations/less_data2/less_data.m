clear all

dirs = dir('a*');

load ../../../expts/analysis/expt3data.mat

for j = 1:2
  cd(['~/matlab/goldwater/models/GGJ/less_data2/' dirs(j).name]);
  
  data_vocabulary_7;
  
  test = [Test_items{:,2}];
  conds = [3 4 5 6 9];
  for i = 1:length(conds)
    scores{j}{1}(:,i) = mean(Choice_probs(test(1:length(Test_items))==conds(i),:));
  end
  
  subplot(2,3,((j-1)*3)+1)
  set(gca,'FontSize',18)
  hold on
  plot(repmat([3 4 5 6 9]',1,10),scores{j}{1}','k')

  hold on
  plot([3 4 5 6 9],means_expt3,'b','LineWidth',2)
  axis([3 9 .5 1])
  
  if i == 1 
    set(gca,'XTick',[3 4 5 6 9])
  else
    set(gca,'XTick',[])
      set(gca,'YTick',[])
  end
  
  title([dirs(j).name ' - 7 sents'])

  
  data_vocabulary_10;
  
  test = [Test_items{:,2}];
  conds = [3 4 5 6 9];
  for i = 1:length(conds)
    scores{j}{1}(:,i) = mean(Choice_probs(test(1:length(Test_items))==conds(i),:));
  end
  
  subplot(2,3,((j-1)*3)+2)
    set(gca,'FontSize',18)
  plot(repmat([3 4 5 6 9]',1,10),scores{j}{1}','k')
  hold on
  plot([3 4 5 6 9],means_expt3,'b','LineWidth',2)
  axis([3 9 .5 1])
  set(gca,'XTick',[])
    set(gca,'YTick',[])
  title([dirs(j).name ' - 10 sents'])


  data_vocabulary_25;
  
  test = [Test_items{:,2}];
  conds = [3 4 5 6 9];
  for i = 1:length(conds)
    scores{j}{2}(:,i) = mean(Choice_probs(test(1:length(Test_items))==conds(i),:));
  end

  subplot(2,3,((j-1)*3)+3)
    set(gca,'FontSize',18)
  plot(repmat([3 4 5 6 9]',1,10),scores{j}{2}','k')
  hold on
  plot([3 4 5 6 9],means_expt3,'b','LineWidth',2)
  axis([3 9 .5 1])
  set(gca,'YTick',[])
  set(gca,'XTick',[])
  title([dirs(j).name ' - 25 sents'])
end

cd ..
