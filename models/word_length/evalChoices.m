function p = evalChoices(mdata,eps)

p = [];

for i = 1:3
  a = mdata{i}{1};
  b = mdata{i}{2};
  
  luce = a ./ (a + b + eps);

  % mean across everything
  rluce = [luce(:,:,:,1) luce(:,:,:,2) luce(:,:,:,3)];
  p = [p; nanmean(nanmean(rluce,2),3)];
end

p = p';