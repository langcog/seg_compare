function plottp(seqs)

% make the matrix
tps = findtp2(seqs);

% normalize
for i = 1:length(tps)
    tps(:,i) / sum(tps(:,i));
end;

% clean the sucker up
a = 1:37;
a = a(sum(tps,2)==0 * (sum(tps,1)==0)');
tps(a,:) = [];
tps(:,a) = [];

% draw it
imagesc(tps);
drawnow;
