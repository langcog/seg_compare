% run the TP models on each of three experiments
clear all;

lambda = 1;
syls = 'gltTbdDrpPBk';
load ../../expts/published/aslin1998real.mat

utts = {corpus};
corr = test(1:2);
incorr = test(3:4);

[tps mis stps freqs] = ...
  findCounts(utts,syls,lambda);

[tp_scores tp_targs tp_dists] = multiMeasureModel(mis,corr,incorr,syls);
