function [bis, freqs] = makebigrams(seqs);

l = length(seqs);

for i = 1:l; % iterate through the strings
    currlen = length(seqs{i})/2;
    
    for j = 1:currlen-1
        bimatrix{i,j} = seqs{i}(j*2-1:j*2+2);
    end;
end;

bilist = consolidate(bimatrix);
[bis, freqs] = frequency(bilist);
[bis, freqs] = sortby(bis,freqs);
