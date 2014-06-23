% get the percentile of a string in a given list
function percentile = getPercentile(list,string)

for i = 1:length(list)
  if sum(strcmp(list{i},string)) > 0
    ind = i;
  end
end

% cheat so that everything is included
percentile = 1.01 - (ind / length(list));