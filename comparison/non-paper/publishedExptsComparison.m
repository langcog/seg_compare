%% load it
clear all;
experiments = {'Frequency Balanced','Embedded strings',...
  'JML - non-words','JML - part words'};

load ../models/TP/2008-1-1-pub_TP_data.mat % TPs
load ../models/swingley/2008-1-1_swingley_published.mat; % swingley
load ../models/PARSER/2008-1-3_parser_published.mat % PARSER
% load ../models/SRN/2007_08_1_srndata.mat; % SRN
load ../models/GGJ/Newport_results/2007-1-16_goldwater_published.mat % GGJ

% human data, means (2:5, because aslin1998 is babies)
human_data = [27.2/32 22.25/32]; % embedded: 22/32 

% model order    'bBP'    'Bpd'    'Dtb'    'pT3'    '6dB'    'T7B'
% partword targets from human data are in order now 
human_part_targs = [3.667 4.5 4.083 3.00 2.75 4.167]./6;
human_non_targs = [4.167 4.75 4.417 4.167 4.583 5.083]./6;

%% consolidate names
% min, amean, gmean, product
temp = 1; % highest temp for ggj
measure = 2; % amean is the only one that works here.

for i = 1:2
  scores.tp(i) = tp_scores{i+2}(measure);
  scores.stp(i) = stp_scores{i+2}(measure);
  scores.mi(i) = mi_scores{i+2}(measure);
end

scores.swing = cell2mat(swing_score(3:4));
%scores.swing(1) = .5; % NaN means no preference in luce choice
scores.parser = cell2mat(parser_score);
scores.parser(1:2) = [];

for i = 1:2
  scores.ggj(i) = mean(ggj_scores{i+2}(:,temp));  
  scores.ggj_str(i) = mean(ggj_str_scores{i+2}(:,temp));  
end
%   scores(i).srn = srn_s{i}(:,4); % use the local minimum, empirical best

%part_targs.corr_tp = [.42 .42 1.0 .5 .75 .75]; % avg like they did in JML
part_targs.tp = tp_by_targ{4}(:,2)';
part_targs.stp = stp_by_targ{4}(:,2)';
part_targs.mi = mi_by_targ{4}(:,2)';
part_targs.swing = swing_by_targ{4}'; 
part_targs.parser = parser_by_targ{4}';
part_targs.ggj = ggj_scores{4}([5 2 3 6 1 4],temp)'; % reorder to be correct
part_targs.ggj_str = ggj_str_scores{4}([5 2 3 6 1 4],temp)'; % reorder to be correct

non_targs.tp = tp_by_targ{3}(:,2)';
non_targs.stp = stp_by_targ{3}(:,2)';
non_targs.mi = mi_by_targ{3}(:,2)';
non_targs.swing = swing_by_targ{3}'; 
non_targs.parser = [.5 .5 .5 .5 .5 .5];
non_targs.ggj = ggj_scores{3}([5 2 3 6 1 4],temp)'; % reorder to be correct
non_targs.ggj_str = ggj_str_scores{3}([5 2 3 6 1 4],temp)'; % reorder to be correct

%% fit it
models = fieldnames(scores);
for model = 1:length(models)
  % get rid of beyond 4 significant figures
  scores.(models{model}) = scores.(models{model}) - mod(scores.(models{model}),.0001);
  fit_scores.(models{model}) = icept_fit(scores.(models{model}),human_data);
%   fit_scores.(models{model}) = pin_fit(scores.(models{model}),human_data);
end

tmodels = fieldnames(part_targs);
for model = 1:length(tmodels)
%   fit_part_targs.(tmodels{model}) = icept_fit(part_targs.(tmodels{model}),human_part_targs);
%   fit_non_targs.(tmodels{model}) = icept_fit(non_targs.(tmodels{model}),human_non_targs);
  fit_part_targs.(tmodels{model}) = pin_fit(part_targs.(tmodels{model}),human_part_targs);
  fit_non_targs.(tmodels{model}) = pin_fit(non_targs.(tmodels{model}),human_non_targs);
end

%% plot data fits

model_names = {'Transitional probability','Smoothed TP','Mutual Information',...
  'Swingley 2005','PARSER','GGJ','GGJ String'};
short_exp = {'non-words','part-words'};
score_a_size = [0 3 .4 1.05];

figure(1);
clf;
set(gcf,'Position',[76 55 906 654]);
subplot(4,2,1);
set(gca,'FontSize',14);  
a = bar(human_data);
title('{\bfSaffran et al., 1996 - JML}','FontSize',16);
set(a,'FaceColor',[1 0 0]);
set(gca,'XTickLabel',short_exp);
axis(score_a_size);

models = fieldnames(scores);
for i = 2:length(models)+1
  subplot(4,2,i)
  set(gca,'FontSize',14);  
  bar(fit_scores.(models{i-1}));
  title(model_names{i-1});
  set(gca,'XTick',[]);
  rval = corr(fit_scores.(models{i-1})',human_data');
  if isnan(rval), rval = 0; end;
  text(2.25,.95,['r = ' num2str(rval,'%2.2f')],'FontSize',16);

  axis(score_a_size);
end

%% plot item difference fits - part words
model_names = {'Transitional probability','Smoothed TP','Mutual Information',...
  'Swingley 2005','PARSER','GGJ','GGJ String'};

item_a_size = [0 7 .4 1.05];
figure(2);
clf
set(gcf,'Position',[110 32 906 654]);
subplot(4,2,1);
set(gca,'FontSize',14);  
a = bar(human_part_targs);
title('{\bfSaffran et al. 1996, partword expt. by items}','FontSize',16);
set(a,'FaceColor',[1 0 0]);
xlabel('items');
set(gca,'XTick',[]);
axis(item_a_size);


models = fieldnames(part_targs);
for i = 2:length(models)+1
  subplot(4,2,i)
  set(gca,'FontSize',14);
  bar(fit_part_targs.(models{i-1}));
  title(model_names{i-1});
  set(gca,'XTick',[]);
  rval = corr(fit_part_targs.(models{i-1})',human_part_targs');
  if isnan(rval), rval = 0; end;
  text(.25,.95,['r = ' num2str(rval,'%2.2f')],'FontSize',16);
  axis(item_a_size);
end

%% plot item difference fits - non-words
model_names = {'Transitional probability','Smoothed TP','Mutual Information',...
  'Swingley 2005','PARSER','GGJ','GGJ String'};


item_a_size = [0 7 .4 1.05];
figure(3);
clf
set(gcf,'Position',[139 10 906 654]);
subplot(4,2,1);
set(gca,'FontSize',14);
a = bar(human_non_targs);
title('{\bfSaffran et al. 1996, nonword expt. by items}','FontSize',16);
set(a,'FaceColor',[1 0 0]);
xlabel('items');
set(gca,'XTick',[]);
axis(item_a_size);
  
models = fieldnames(non_targs);
for i = 2:length(models)+1
  subplot(4,2,i)
  set(gca,'FontSize',14);
  bar(fit_non_targs.(models{i-1}));
  title(model_names{i-1});
  set(gca,'XTick',[]);
  rval = corr(fit_non_targs.(models{i-1})',human_non_targs');
  if isnan(rval), rval = 0; end;
  text(.25,.95,['r = ' num2str(rval,'%2.2f')],'FontSize',16);
  axis(item_a_size);
end


