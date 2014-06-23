function trisyls = gettris(tris,bisbymis,criterion)

trisyls = {};

for i = 1:length(tris)
  if iscell(tris{i})
    for j = 1:length(tris{i})
      curr = tris{i}{j};
      bi1 = curr(1:2);
      bi2 = curr(2:3);
      if getPercentile(tris,curr) > criterion && ...
        getPercentile(bisbymis,bi1) > criterion && ...
        getPercentile(bisbymis,bi2) > criterion
        trisyls = [trisyls curr];
      end
    end
  else
    curr = tris{i};
    bi1 = curr(1:2);
    bi2 = curr(2:3);
    if getPercentile(tris,curr) > criterion && ...
      getPercentile(bisbymis,bi1) > criterion && ...
      getPercentile(bisbymis,bi2) > criterion
      trisyls = [trisyls curr];
    end
  end
end