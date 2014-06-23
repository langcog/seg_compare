function [seqs, tlex] = getseqsnumsp(num,len);

% what are the sequences of the model?

seqs = [];
thislen = poissrnd(len)+2;

for i = 1:num
    if i == thislen - 1 & i > 2*num/3
        thisword = randint(7,9);
    elseif i == thislen
        thisword = -1;
        thislen = thislen + poissrnd(len)+2;
    else
        thisword = randint(1,6);
    end;

    seqs = [seqs thisword];
end;
