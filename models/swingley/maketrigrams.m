function [tris, freqs] = maketrigrams(seqs);

l = length(seqs);

for i = 1:l; % iterate through the strings
    currlen = length(seqs{i})/2;
    
    for j = 1:currlen-2
        trimatrix{i,j} = seqs{i}(j*2-1:j*2+4);
    end;
end;

trilist = consolidate(trimatrix);
[tris, freqs] = frequency(trilist);
[tris, freqs] = sortby(tris,freqs);
