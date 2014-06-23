% run the TP models on each of three experiments

% note, Aslin is MCF 12-31-07 reconstruction to make frequencies correct,
% not the original (though it is based on files sent by Newport)

clear all;
 
f = dir('../../expts/published materials/*.txt');
files = {f.name};

lambda = 10;

% run TPs on each file
for expt = 1:length(files) 
  fprintf('**** Experiment #%d ****\n',expt);
  [sents{expt},corr{expt},incorr{expt},syls{expt}] = ...
    readInFilesPublished(['../../expts/published materials/' files{expt}]);
  
  [tps{expt} mis{expt} stps{expt}] = ...
    findCounts(sents{expt},syls{expt},lambda);

  [tp_scores{expt} targs{expt}] = ...
    multiMeasureModel(tps{expt},corr{expt},incorr{expt},syls{expt});
  mi_scores{expt} = ...
    multiMeasureModel(mis{expt},corr{expt},incorr{expt},syls{expt});
  stp_scores{expt}  = ...
    multiMeasureModel(stps{expt},corr{expt},incorr{expt},syls{expt});

  if any(expt == [3 4])
    for i = 1:6
      targ{i} = corr{expt}{((i-1)*6)+1};
      for j = 1:6
        dist{j} = incorr{expt}{((i-1)*6)+j};
      end

      tp_by_targ{expt}(i,:) = mean(tp_scores{expt}(((i-1)*6)+1:((i)*6),:));
      tp_by_dist{expt}(i,:) = mean(tp_scores{expt}([0 6 12 18 24 30] + i,:)); 
      mi_by_targ{expt}(i,:) = mean(mi_scores{expt}(((i-1)*6)+1:((i)*6),:));
      mi_by_dist{expt}(i,:) = mean(mi_scores{expt}([0 6 12 18 24 30] + i,:)); 
      stp_by_targ{expt}(i,:) = mean(stp_scores{expt}(((i-1)*6)+1:((i)*6),:));
      stp_by_dist{expt}(i,:) = mean(stp_scores{expt}([0 6 12 18 24 30] + i,:)); 
    end    
  end

  tp_scores{expt} = mean(tp_scores{expt});
  mi_scores{expt} = mean(mi_scores{expt});
  stp_scores{expt} = mean(stp_scores{expt});  
end

save 2008-1-1-pub_TP_data.mat tp_* mi_* stp_* targ dist