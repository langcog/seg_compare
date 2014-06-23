function bisyls = getbis(bis,bisbymis,criterion)

bisyls = {};

for i = 1:length(bis)
  if iscell(bis{i})
    for j = 1:length(bis{i})
      curr = bis{i}{j};
      if getPercentile(bis,curr) > criterion && ...
        getPercentile(bisbymis,curr) > criterion
        bisyls = [bisyls curr];
      end
    end
  else
    curr = bis{i};
    if getPercentile(bis,curr) > criterion && ...
      getPercentile(bisbymis,curr) > criterion
      bisyls = [bisyls curr];
    end
  end
end
