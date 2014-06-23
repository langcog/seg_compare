function [t,d] = getTargDist(a,b)

a = [a(:,:,:,1) a(:,:,:,2) a(:,:,:,3)];
b = [b(:,:,:,1) b(:,:,:,2) b(:,:,:,3)];

t = squeeze(nanmean(nanmean(a,2),3));
d = squeeze(nanmean(nanmean(b,2),3));

% t = t ./ (t + d);
% d = d ./ (t + t);