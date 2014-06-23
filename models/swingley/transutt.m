function seqs = transutt(wl);

tlex = {'gola','pado','tupiro','bidaku','nimalubu','nomifati', 'comi','sivera','tonicanu'};

c = 1;
seqs{1} = [];

for i = 1:length(wl)
    if wl(i) == -1
        c = c + 1;
        seqs{c} = [];
    else
        seqs{c} = strcat(seqs{c},tlex{wl(i)});
    end;
end;
