function monos = getmonos(unis,criterion)

monos = {};

for i = 1:length(unis)
  if iscell(unis{i})
    for j = 1:length(unis{i})
      curr = unis{i}{j};
      if getPercentile(unis,curr) > criterion
        monos = [monos curr];
      end
    end
  else
    curr = unis{i};
    if getPercentile(unis,curr) > criterion
      monos = [monos curr];
    end
  end
end
