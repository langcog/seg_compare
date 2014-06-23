clear all;
data_vocabulary;

dist_ind = [Dist_items{:,2}];
test_ind = [Test_items{:,2}];

cond = [3 6 9];

for i = 1:3
  vocab(i,:) = mean(Choice_probs(((i-1)*12)+1:i*12,:));
  targ(i,:) = mean(Dist_probs(dist_ind==cond(i),:));
  dist(i,:) = mean(Test_probs(test_ind==cond(i),:));
end

targs = [1:5 16:20];
dists = [6:10 21:25];
vocabs = [11:15 26:30];
clf
for i = 1:10
  subplot(6,5,targs(i))
  plot([3 6 9],targ(:,i),'ro-')
  set(gca,'XTickLabel',[])
  title(['targets, temp ' num2str(i)]);
  
  subplot(6,5,dists(i))
  plot([3 6 9],dist(:,i),'bo-')
  set(gca,'XTickLabel',[])
  title(['distractors, temp ' num2str(i)]);

  subplot(6,5,vocabs(i))
  plot([3 6 9],vocab(:,i),'go-')
  set(gca,'XTickLabel',[])
  title(['luce choice, temp ' num2str(i)]);
end