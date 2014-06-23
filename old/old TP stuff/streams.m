% ----
% aslin, saffran, & newport 1998
% 270 words total
% first two words appear 45 times each, second two appear 90 times each

words = {'pabiku','tibudo','golatu','daropi'};
numwords = 270;
freqs = [45 45 90 90];
distrib = [.125 .125 .375 .375];

aslin1998 = makeWordList(words,numwords,freqs,distrib);

% ----
% saffran, aslin, & newport 1996 
% 180 words total

words = {'golabu','padoti','tupiro','bidaku'};
numwords = 180;
freqs = [45 45 45 45];
distrib = [.25 .25 .25 .25];

saffran1996 = makeWordList(words,numwords,freqs,distrib);

% ----
% saffran, newport, & aslin 1996b

words = {'babupu','bupada','dutaba','patubi','pidabu','tutibu'};
numwords = 1800;
freqs = [300 300 300 300 300 300];
distrib = [.1667 .1667 .1667 .1667 .1667 .1667];

saffran1996b = makeWordList(words,numwords,freqs,distrib);
s1 = saffran1996b(1:3600);
s2 = saffran1996b(3601:7200);
s3 = saffran1996b(7201:10800);

fid = fopen('saffran1996b.txt','w');
fprintf(fid,'%s\n',s1);
fprintf(fid,'%s\n',s2);
fprintf(fid,'%s\n',s3);