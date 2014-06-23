function [unis, freqs] = makeunigrams(seqs);

l = length(seqs);

for i = 1:l;
    currlen = length(seqs{i})/2;
    
    for j = 1:currlen
        unimatrix{i,j} = seqs{i}(j*2-1:j*2);
    end;
end;

unilist = consolidate(unimatrix);
[unis, freqs] = frequency(unilist);
[unis, freqs] = sortby(unis,freqs);
