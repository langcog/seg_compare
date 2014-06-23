clear all

dirs = dir('a*');



for j = 1:9
  cd(['~/matlab/goldwater/models/GGJ/vary_alpha/' dirs(j).name]);
  data_vocabulary
  
  test = [Test_items{:,2}];
  load test.mat
  conds = [3 4 5 6 9];
  for i = 1:length(conds)
    scores{j}(:,i) = mean(Choice_probs(test(1:length(Test_items))==conds(i),:));
  end
  
  subplot(3,3,j)
  plot(repmat([3 4 5 6 9]',1,10),scores{j}')
  axis([3 9 .8 1])
  set(gca,'XTick',[3 4 5 6 9])
  title(dirs(j).name)
end

cd ..

%%

for i = 1:2
  subplot(1,2,i)
  
    plot(repmat([3 4 5 6 9]',1,10),scores{i}')
  axis([3 9 .8 1])
  set(gca,'XTick',[3 4 5 6 9])

end

  