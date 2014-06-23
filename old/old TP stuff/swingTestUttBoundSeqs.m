function seqs = swingTestUttBoundSeqs(numWdsPerSeq,numSeqs)
% words = {[1 2],[3 4],[5 6 7],[8 9 10],[11 12 13 14],[15 16 17 18],...
%    [19 20],[21 22 23],[24 25 26 27]};
words = {[1 2 3],[4 5 6],[7 8 9]};


for i = 1:numSeqs
    seqs{i} = [];
    for j = 1:numWdsPerSeq
        if rand > .5
            seqs{i} = [seqs{i} words{randIntZ(1,length(words))}];
        else
            seqs{i} = [seqs{i} words{randIntZ(1,length(words)-1)}];
        end;
    end;
end;
