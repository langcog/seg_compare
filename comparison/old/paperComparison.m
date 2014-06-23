% do comparisons between curves for paper

clear all;
choice_data_a20;
plots_mike;
load expt_data3.5.07.mat
load PARSER/parserScore1.29.07.mat
load swingley/swingScore1.29.07.mat
load tp2.9.07.mat;
load tps2.9.07.mat;
load mi2.9.07.mat;
readSRNout
lens = [1 2 3 4 6 8 12 24];

%% do some data averaging

pv_corr = pv.corr_w;
pv_incorr = pv.incorr_w;
pv = mean(pv.score,2);
sw = mean(s_swing,2);

%% fit
srn_fit = fit(srn_s,data);
tp_fit = fit(tp_s,data);
mi_fit = fit(mi_s,data);
tps_fit = fit(tps_s,data);
pv_fit = fit(pv,data);
sw_fit = fit(sw,data);
gw = mean(gw_probs{6},2);
gw_fit = fit(gw,data);

%% correlations
clear corr;
dmat = [data' tp_fit tps_fit srn_fit pv_fit gw_fit];
corr([data' srn_fit]);
corr([data' tp_fit tps_fit mi_fit]);
corr(dmat);
corr([data' gw_fit])
%% graph a different way

figure(1);
clf
set(gcf,'Position',[0 0 1100 600])
% srn: mse (last, sum, bound ratio) prob (min, mean, geomean, prod)
mods = [tp_fit(:,1) tps_fit(:,1) mi_fit(:,1) sw_fit pv_fit gw_fit]; % srn_fit(:,4)
mod_labs = {'Transitional probability','Smoothed TP','Mutual information',...
  'Swingley2005','PARSER',...
  'GGJ2006'};

clf;

for i = 1:6
  subplot(2,3,i)
  plot(lens,data,'-k',lens,mods(:,i),'--k','LineWidth',2);
  
  if i == 1
    legend({'Human data','Model'});
    set(gca,'FontSize',20,'FontName','Times','XTick',[0 12 24],...
      'YTick',[.5 .75 1])
    xlabel('Sentence Length');
    ylabel('Decision probability');
  else
    set(gca,'XTickLabel',[],'YTickLabel',[],'XTick',[0 12 24],'YTick',[.5 .75 1]);
  end
  
  axis([0 25 .5 1])
  mod_corr = corr([data' mods(:,i)]);
  title([mod_labs{i} ', r = ' num2str(mod_corr(2,1),'%2.3f')],...
    'FontSize',22,'FontName','Times');
end


%% now do target probability fits

tp_t = mean(tp_t,2);
stp_t = mean(tps_t,2);
mi_t = mean(mi_t,2);
gw_t = mean(t_probs(:,1),2);
pv_t = mean(pv_corr,2);
sw_t = mean(cs_swing,2);
tp_t_fit = tp_t ./ max(tp_t);
stp_t_fit = stp_t ./ max(stp_t);
mi_t_fit = mi_t ./ max(mi_t);
gw_t_fit = gw_t ./ max(gw_t);
pv_t_fit = pv_t ./ max(pv_t);
sw_t_fit = sw_t ./ max(sw_t);

%% and distractor fits
tp_d = mean(tp_d,2);
stp_d = mean(tps_d,2);
mi_d = mean(mi_d,2);
gw_d = mean(d_probs(:,1),2);
pv_d = mean(pv_incorr,2);
sw_d = mean(is_swing,2);
tp_d_fit = tp_d ./ max(tp_t);
stp_d_fit = stp_d ./ max(stp_t);
mi_d_fit = mi_d ./ max(mi_t);
gw_d_fit = gw_d ./ max(gw_t);
pv_d_fit = pv_d ./ max(pv_t);
sw_d_fit = sw_d ./ max(sw_t);


%% and graph (tps have min, arithmetic mean, geomean, and prod)
figure(2)
clf
set(gcf,'Position',[0 0 1100 600])

ts = [tp_t_fit stp_t_fit mi_t_fit sw_t_fit pv_t_fit gw_t_fit]; 
ds = [tp_d_fit stp_d_fit mi_d_fit sw_d_fit pv_d_fit gw_d_fit]; 

mod_labs = {'Transitional probability','Smoothed TP',...
  'Mutual information',...
  'Swingley2005','PARSER',...
  'GGJ2006'}

clf;
clear corr;

for i = 1:6
  subplot(2,3,i)
  plot(lens,ts(:,i),'--k',lens,ds(:,i),':k','LineWidth',2);
  
  if i == 1
    legend({'Target scores','Distractor scores','location','Best'});
    set(gca,'FontSize',20,'FontName','Times','XTick',[0 12 24],...
      'YTick',[.5 1])
  else
    set(gca,'XTickLabel',[],'YTickLabel',[],'XTick',[0 12 24],'YTick',[.5 .75 1]);
  end
  
   axis([0 25 -.05 1.05])
   title(mod_labs{i},'FontSize',22,'FontName','Times');
end