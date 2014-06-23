words = {'gola','bupa','tupiro','bidaku','nomifati','nimaluba'};
numwords = 600;
freqs = [100 100 100 100 100 100];
distrib = [.1667 .1667 .1667 .1667 .1667 .1667];

len1 = makeUttList(words, numwords, freqs, distrib, 600, 1); 
len2 = makeUttList(words, numwords, freqs, distrib, 300, 2); 
len3 = makeUttList(words, numwords, freqs, distrib, 200, 3); 
len5 = makeUttList(words, numwords, freqs, distrib, 120, 5); 
len10 = makeUttList(words, numwords, freqs, distrib, 60, 10); 
len20 = makeUttList(words, numwords, freqs, distrib, 30, 20); 