% corpus from Aslin, Saffran, & Newport 1998
% constructed 8.8.07 MCF

clear all;

for j = 1:1000
  corpus1 = {'pbk','tBd','glT','DrP'};
  corpus2 = {'TDr','Pgl','bkt','Bdp'};
  test = {'pbk','tBd','TDr','Pgl'};
  num_tokens = 270;
  freqs = [45 45 90 90];

  previous = 0;
  stream = [];

  for i = 1:num_tokens
    word_probs = freqs / sum(freqs);
    word = find(multirnd(word_probs)==1);

    while freqs(word)==0 %|| previous == word
      word = find(multirnd(word_probs)==1);
    end;

    stream = [stream corpus1{word}];
    freqs(word) = freqs(word) - 1;
  end;	

  utts{1} = stream;
  corr = {test{1},test{2}};
  incorr = {test{3},test{4}};

  %save aslin1998utt.mat utts corr incorr

  t1(j) = length(strfind(utts{1},'TDr'));
  t2(j) = length(strfind(utts{1},'Pgl'));
end

%%

subplot(2,1,1)
hist(t1)
title('part-word 1')
subplot(2,1,2)
hist(t2)
title('part-word 2')
