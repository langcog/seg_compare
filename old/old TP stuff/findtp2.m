function tp = findtp2(seqs);

elmax = 0;
for i = 1:length(seqs)
    if max(seqs{i})>elmax    
        elmax = max(seqs{i});
    end;    
end;

elmax = elmax + 1; % add one for spaces
tp = zeros(elmax);

for i = 1:length(seqs)
    seq = seqs{i};
    
    for j = 1:length(seq)+1
        if j == 1
            tp(seq(j),elmax) = tp(seq(j),elmax) + 1;
        elseif j == length(seq) + 1
            tp(elmax,seq(j-1)) = tp(elmax,seq(j-1)) + 1;
        else
            tp(seq(j),seq(j-1)) = tp(seq(j),seq(j-1)) + 1;
        end;
    end;
end;