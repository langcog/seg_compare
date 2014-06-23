function [tp, elements] = celltp(seqs)

eseqs = [seqs{:}]; 

for i = 1:2:length(eseqs)
    elemlist{((i-1)/2)+1} = eseqs(i:i+1);
end;

elements = unique(elemlist);

for i = 1:length(seqs)
    [tp, AB(:,:,i)] = findtp3(seqs{i}, elements);       
end;

AB = sum(AB,3);

freqs = frequ(eseqs,2);

for i = 1:length(elements)
    thisA = elements{i};    
    tp(i,:) = AB(i,:) ./ freqs.(thisA);
end;
