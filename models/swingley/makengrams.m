function [ns, freqs] = makengrams(seqs,n);

l = length(seqs);

for i = 1:l; % iterate through the seqs
  currlen = length(seqs{i});

  % fixed for single letter syllables (1/23/07)
  for j = 1:currlen-(n-1)
    nmanx{i,j} = seqs{i}(j:j+n-1);
  end;
end;

nlist = consolidate(nmanx);
[ns, freqs] = frequency(nlist);
