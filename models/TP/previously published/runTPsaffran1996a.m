% run the TP models on each of three experiments
clear all;

lambda = 1;
syls = '367BDPTbdpt';

load ../../expts/published/saffran1996a.mat

[tps mis stps freqs] = ...
  findCounts(utts,syls,lambda);

[tp_scores tp_targs tp_dists] = multiMeasureModel(tps,corr,incorr,syls);

for i = 1:6
  tp_scores_m(i,:) = mean(tp_scores(1+(6*(i-1)):6*i,:));
end