clear all

dirs = dir('a*');
dirs = {dirs.name};

for j = 1:length(dirs)
  cd(['~/matlab/goldwater/models/GGJ/less_data_expts1-2/' dirs{j}]);

  fs = dir('*.m');
  fs = {fs.name};
  
  for k = 1:length(fs)
    eval(fs{k}(1:end-2));
  
    test = [Test_items{:,2}];
    conds{j}{k} = unique(test);

    for i = 1:length(conds{j}{k})
      scores{j}{k}(:,i) = mean(Choice_probs(test(1:length(Test_items))==conds{j}{k}(i),:));
    end
  end
end

cd ..

%% plots

%     subplot(2,2,((j-1)*2)+1)
%     plot(repmat([3 4 5 6 9]',1,10),scores{j}{1}')
%     axis([3 9 .5 1])
%     set(gca,'XTick',[3 4 5 6 9])
%     title([dirs(j).name ' - 10 sents'])

f = [4 7 1 2 6 9 3];
titles = {'sent length, 10','sent length, 25','sent length, 7','tokens, 10%',...
  'types, 10', 'types, 25', 'types, 7'};

figure(1);
for i = 1:7
  subplot(3,3,f(i));
  plot(repmat(conds{1}{i}',[1 10]),scores{1}{i}');
  axis([min(conds{1}{i}) max(conds{1}{i}) .5 1])
  title([titles(i) ' - a=1e-6'])
end

figure(2);
for i = 1:7
  subplot(3,3,f(i));
  plot(repmat(conds{2}{i}',[1 10]),scores{2}{i}');  
  axis([min(conds{1}{i}) max(conds{1}{i}) .5 1]) 
  title([titles(i) ' - a=20'])
end

%% save

ggj_less_data{1} = scores{2}{1};
ggj_less_data{2} = scores{2}{4};
ggj_less_data{3} = scores{2}{5};
save ggj_less_data7_9_09.mat ggj_less_data