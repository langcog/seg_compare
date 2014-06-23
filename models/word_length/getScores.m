function [p lp] = evalChoices(a,b,eps)
  
luce = a ./ (a + b + eps);

% mean across everything
rluce = [luce(:,:,:,1) luce(:,:,:,2) luce(:,:,:,3)];
p = nanmean(nanmean(rluce,2),3);

% with all three lengths
lp = squeeze(nanmean(nanmean(luce,2),3));
