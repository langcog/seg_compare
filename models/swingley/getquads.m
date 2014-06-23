function quadsyls = getquads(quads,bisbymis,criterion)

quadsyls = {};

for i = 1:length(quads)
  if iscell(quads{i})
    for j = 1:length(quads{i})
      curr = quads{i}{j};
      bi1 = curr(1:2);
      bi2 = curr(2:3);
      bi3 = curr(3:4);
      if getPercentile(quads,curr) > criterion && ...
        getPercentile(bisbymis,bi1) > criterion && ...
        getPercentile(bisbymis,bi2) > criterion && ...
        getPercentile(bisbymis,bi3) > criterion 
        quadsyls = [quadsyls curr];
      end
    end
  else
    curr = quads{i};
    bi1 = curr(1:2);
    bi2 = curr(2:3);
    bi3 = curr(3:4);
    if getPercentile(quads,curr) > criterion && ...
      getPercentile(bisbymis,bi1) > criterion && ...
      getPercentile(bisbymis,bi2) > criterion && ...
      getPercentile(bisbymis,bi3) > criterion 
      quadsyls = [quadsyls curr];
    end
  end
end