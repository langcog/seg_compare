% add MSE
% add MSE plus single correction, slope & intercept across all three
% experiments

clear all

load ../expts/analysis/expt1data.mat
load ../expts/analysis/expt2data.mat
load ../expts/analysis/expt3data.mat

%% first compare TP models

load ../models/TP/2008-05-06-TP_scores.mat

for e = 1:3
  for i = 2:5
    this_model_tp = mean(tp_scores{e}(:,i,:),3);
    this_model_mi = mean(mi_scores{e}(:,i,:),3);

    for j = 1:10
      this_model_stp = mean(stp_scores{e}{j}(:,i,:),3);
      stp_corrs(e,i-1,j) = corr(this_model_stp,eval(['means_expt' num2str(e)])');
    end

    for j = 1:10
      this_model_lstp = mean(lstp_scores{e}{j}(:,i,:),3);
      lstp_corrs(e,i-1,j) = corr(this_model_lstp,eval(['means_expt' num2str(e)])');
    end

    tp_corrs(e,i-1) = corr(this_model_tp,eval(['means_expt' num2str(e)])');
    mi_corrs(e,i-1) = corr(this_model_mi,eval(['means_expt' num2str(e)])');
  end
end

%% now GGJ

load ../models/GGJ/2008-04-22-GGJdata.mat

for e = 1:3
  for i = 1:10
    ggj_corrs(e,i) = corr([GGJ_scores{e}{1}(i,:)]',eval(['means_expt' num2str(e)])');
    ggjp_corrs(e,i) = corr([GGJ_scores{e}{2}(i,:)]',eval(['means_expt' num2str(e)])');
  end
end

%% swingley and parser

load ../models/swingley/2007-07-31_swingley_results.mat; % swingley
load ../models/PARSER/2007-07-31_parser_results.mat % PARSER
load ../models/SRN/2007_08_1_srndata.mat; % SRN

for e = 1:3
  means = eval(['means_expt' num2str(e)])';
  if e==3
    means(2:3) = [];
  end
  swing_mean = mean(s_swing{e},2);
  swing_corrs(e) = corr(swing_mean, means);
  
  parser_corrs(e) = corr(mean(parser_score{e},2),means);
  
  ms = [1 4 5 6]; % mse_last prob_min prob_mean prob_geomean
  for i = 1:4
    srn_corrs(e,i) = corr(srn_s{e}(:,ms(i)),means);
  end
end

