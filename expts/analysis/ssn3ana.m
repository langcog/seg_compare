clear all;

fname = '../data/SSN3-data.txt';
[subname, cond, date, len, rt, resp, corr] = ...
  textread(fname,'%s%n%s%n%n%n%n','delimiter','\t');

% eliminate missed keys (resp == -1)
cond = cond(resp~=-1);
subname = subname(resp~=-1);
corr = corr(resp~=-1);
rt = rt(resp~=-1);
len = len(resp~=-1);

% calculate outliers
submeans = grpstats(corr,subname);


% graph it
vals = graphBySubject(corr,subname,cond);


%% remove outliers
for i = 1:length(vals)
  vals{i}(vals{i}<mean(vals{i})-(2*std(vals{i}))) = [];  
end
%%

labels = [3 4 5 6 9];
interval = .1;

data2 = nan(13,5);
data = [0 0];
for i = 1:length(labels)
  means(i) = mean(vals{i});
  data2(1:length(vals{i}),i) = vals{i};
  for j = 1:length(vals{i})
    c = interval;
    this_point = [vals{i}(j) labels(i)+c];
        
    while sum(data(:,1) == this_point(1) & data(:,2) == this_point(2)) >= 1
      c = c+interval;
      this_point = [vals{i}(j) labels(i)+c];
    end
    
    data = [data; this_point];
  end
end

data(1,:) = [];

data_expt3 = data;
means_expt3 = means;
save expt3data.mat data_expt3 means_expt3

%% now plot
figure(1)
clf
set(gca,'FontSize',18,'FontName','Times')
hold on
plot(data(:,2),data(:,1),'.b')
errorbar(labels,nanmean(data2),stderr(data2),'k')

axis([2 10 .4 1.05]);
xlabel('Sentence length (error bars reflect SEM)');
ylabel('Average % correct');
title('Segmentation performance by sentence length');
%legend('individual subject means')


%% lens
figure(2)
clf
set(gca,'FontSize',12)
lens = grpstats(corr,{len cond});
sems = grpstats(corr,{len cond},'sem');
lens = reshape(lens,5,3);
sems = reshape(sems,5,3);

hold on
for i = 1:3
  h(i) = errorbar(labels,lens(:,i),sems(:,i),'o-');
end

set(h(1),'Color','r')
set(h(2),'Color','g')
set(h(3),'Color','b')

axis([2 10 .45 1.05]);
xlabel('Utterance length (words)','FontSize',14);
ylabel('Average percent correct','FontSize',14);
legend('two syllables','three syllables','four syllables')
