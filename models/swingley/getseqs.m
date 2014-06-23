function [seqs, tlex] = getseqs(num,len);

% what are the sequences of the model?

wordlist1 = {'gola','pado','tupiro','bidaku','nimalubu','nomifati'};
wordlist2 = {'comi','sivera','tonicanu'};
%wordlist = {'golabu','padoti','tupiro','bidaku','nimalu','nomifa'};


for i = 1:num*2
    seqs{i} = [];
    thislen = poissrnd(len)+2;
    for j = 1:thislen;
        thisword = wordlist1{randint(1,6)};        
        seqs{i} = [seqs{i} thisword];
    end;
end;

for i = 1:num*2+1:num*3
    seqs{i} = [];
    thislen = poissrnd(len)+2;
    for j = 1:thislen;
        if j == thislen
            thisword = wordlist2{randint(1,3)};
        else
            thisword = wordlist1{randint(1,6)};
        end;
        
        seqs{i} = [seqs{i} thisword];
    end;
end;

tlex = [wordlist1 wordlist2];