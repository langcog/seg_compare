function [seqs, tlex] = getseqs(num,len);

% what are the sequences of the model?

wordlist1 = {'gola','pado','tupiro','bidaku','nimalubu','nomifati'};
wordlist2 = {'comi','sivera','tonicanu'};

for i = 1:num*2
    seqs{i} = [];
    thislen = poissrnd(len) +2;
    for j = 1:thislen;
        thisword = wordlist1{randint(1,6)};        
        seqs{i} = [seqs{i} thisword];
    end;
end;

a = 0;
for i = num*2+1:num*3
    seqs{i} = [];
    thislen = poissrnd(len)+2;
    spos = randIntZ(1,thislen);
    for j = 1:thislen;
        if j == spos
            a = a+1;
            thisword = wordlist2{randint(1,3)};
        else
            thisword = wordlist1{randint(1,6)};
        end;

        seqs{i} = [seqs{i} thisword];
    end;
end;

tlex = [wordlist1 wordlist2]; 
disp(a);