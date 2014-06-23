%clear all

f = dir('../../expts/published materials/*.txt');
files = {f.name};

%% run TPs on each file
for expt = 1:length(files) 
  fprintf('**** Experiment #%d ****\n',expt);
  [sents{expt},corr{expt},incorr{expt},syls{expt}] = ...
    readInFilesPublished(['../../expts/published materials/' files{expt}]);

  [swing_score{expt} cs_swing{expt}, is_swing{expt}] = ...
    swingley(sents{expt},corr{expt},incorr{expt},syls{expt});     

  
  if any(expt == [3 4])
    for i = 1:6
      swing_by_targ{expt}(i,:) = nanmean(swing_score{expt}(((i-1)*6)+1:((i)*6)));
      swing_by_dist{expt}(i,:) = nanmean(swing_score{expt}([0 6 12 18 24 30] + i)); 
    end    
  end
  
  swing_score{expt} = nanmean(swing_score{expt});  
end

save 2008-1-1_swingley_published.mat swing_score swing_by_targ
