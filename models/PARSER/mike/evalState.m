function [score corr_probs incorr_probs] = evalState(state,corr,incorr)

%state.probs = state.weights ./ sum(state.weights);

corr_probs = zeros(1,length(corr));
incorr_probs = zeros(1,length(corr));

for i = 1:length(corr)
  for j = 1:length(state.units)
    unit = state.units{j};
    if strmatch(unit,corr{i},'exact')
      corr_probs(i) = state.probs(j);
    elseif strmatch(unit,incorr{i},'exact')
      incorr_probs(i) = state.probs(j);
    end
  end
end

warning off;
score = corr_probs ./ (incorr_probs + corr_probs);
warning on;

corr_probs = nanmean(corr_probs);
incorr_probs = nanmean(incorr_probs);