%% load expts
clear all;

load ../../expts/analysis/expt1data.mat
load ../../expts/analysis/expt2data.mat
load ../../expts/analysis/expt3data.mat

expt_s{1} = means_expt1;
expt_s{2} = means_expt2;
expt_s{3} = means_expt3;

load ggj.mat

%%

a = squeeze(nanmean(nanmean(ggj{3}{1},2),3))
b = squeeze(nanmean(nanmean(ggj{3}{2},2),3))

a ./ (a + b + .001)