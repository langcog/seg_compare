clear all;
choice_data_a20;
plots_mike;
load exptFinalData3.8.07.mat
load expt_data3.5.07.mat
load PARSER/parserScore1.29.07.mat
load swingley/swingScore1.29.07.mat
load tp2.9.07.mat;
load tps2.9.07.mat;
load mi2.9.07.mat;
lens = [1 2 3 4 6 8 12 24];

%% do some data averaging

pv_corr = pv.corr_w;
pv_incorr = pv.incorr_w;
pv = mean(pv.score,2);
sw = mean(s_swing,2);
gw = mean(gw_probs{6},2);


%% bootstrap

boot_rs = bootstrp(10000,@(x) fitCorr({tp_s(:,1) mi_s(:,1) tps_s(:,1) pv sw gw},x),points) 

%%
figure(1)
clf
set(gca,'FontSize',14);
subplot(2,1,1);
set(gca,'FontSize',14);
boxplot(boot_rs);
set(gca,'XTickLabel',{'TP','MI','TP smooth','PARSER','Swingley','GGJ'})
xlabel('model');
ylabel('correlation with data');
title('bootstrap statistics on r values for model fits to SSN data');

subplot(2,1,2);
set(gca,'FontSize',14);
hist(boot_rs,100)
legend('TP','MI','TP smooth','PARSER','Swingley','GGJ','Location','Best');
xlabel('r')
title('histogram of bootstrap samples')
cis = [mean(boot_rs) - ((std(boot_rs) ./ sqrt(1000)) .* 1.96); ...
  mean(boot_rs) + ((std(boot_rs) ./ sqrt(1000)) .* 1.96)];

% %% fit
% srn_s = [0 0 0 0 0 0 0 0]';
% srn_fit = fit(srn_s,data);
% tp_fit = fit(tp_s,data);
% mi_fit = fit(mi_s,data);
% tps_fit = fit(tps_s,data);
% pv_fit = fit(pv,data);
% sw_fit = fit(sw,data);
% gw_fit = fit(gw,data);