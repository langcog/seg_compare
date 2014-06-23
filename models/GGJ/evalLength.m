clear all
data_length;

dist_ind = [Dist_items{:,2}];
test_ind = [Test_items{:,2}];

cond = [1 2 3 4 6 8 12 24];

for i = 1:8
  vocab(i,:) = mean(Choice_probs(((i-1)*12)+1:i*12,:));
  targ(i,:) = mean(Dist_probs(dist_ind==cond(i),:));
  dist(i,:) = mean(Test_probs(test_ind==cond(i),:));
end

targs = [1:5 16:20];
dists = [6:10 21:25];
vocabs = [11:15 26:30];
clf
lens = [1 2 3 4 6 8 12 24];

for i = 1:10
  subplot(6,5,targs(i))
  plot(lens,targ(:,i),'ro-')
  set(gca,'XTickLabel',[])
  title(['targets, temp ' num2str(i)]);
  
  subplot(6,5,dists(i))
  plot(lens,dist(:,i),'bo-')
  set(gca,'XTickLabel',[])
  title(['distractors, temp ' num2str(i)]);

  subplot(6,5,vocabs(i))
  plot(lens,vocab(:,i),'go-')
  set(gca,'XTickLabel',[])
  title(['luce choice, temp ' num2str(i)]);
end