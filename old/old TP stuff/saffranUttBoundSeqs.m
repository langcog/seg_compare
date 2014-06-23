function seqs = saffranUttBoundSeqs(numWdsPerSeq,numSeqs);

words = {[1 2 3],[7 8 9],[4 5 6],[10 11 12]};

for i = 1:numSeqs
    seqs{i} = [];
    for j = 1:numWdsPerSeq
        seqs{i} = [seqs{i} words{randIntZ(1,length(words))}];
    end;
end;
