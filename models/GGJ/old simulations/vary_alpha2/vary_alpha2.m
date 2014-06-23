dirs = dir('a*');
dirs = {dirs.name};

expts = {'data_length','data_tokens','data_vocabulary'};
conds = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};

ord = [11:-1:6 1 2 12 15 3 13 4 14 5];

%% read in data 

for a = ord
  fprintf('alpha = %s\n',dirs{a});
  cd(['~/matlab/goldwater/models/GGJ/vary_alpha2/' dirs{a}]);
  
  for e = 1:length(expts)
    
    eval(expts{e})
    
    test = [Test_items{:,2}];
    
    for c = 1:length(conds{e})
      these_items = test(1:length(Test_items))==conds{e}(c);
      these_choice_probs = Choice_probs(these_items,:);
      scores{a,e}(:,c) = mean(these_choice_probs);     
    end
  end
end

cd('~/matlab/goldwater/models/GGJ/vary_alpha2/')

%% plot 

figure(1)
clf;

c = 1;
for e = 1:length(expts)
  for a = ord
    subplot(3,15,c)
    plot(repmat(conds{e}',1,10),scores{a,e}')
    
    axis([min(conds{e}) max(conds{e}) .6 1])
    c = c+1;
    title(dirs{a})
    
    if a~=11
      set(gca,'XTick',[],'YTick',[])
    end
  end
end

