function [seqs, tlex] = getseqswl;

% this is what the no-uttbound condition (2) in SEGsent saw

wl1 = mss(2);
wl2 = mss(2);
wl3 = mss2(2);

i = 1;

% take out all the -1s in wl3
while i <= length(wl3)
    if wl3(i) == -1, wl3(i) = []; end;
    i = i+1;
end;

wlana([wl1 -1 wl2 -1 wl3]);

seqs = transutt([wl1 -1 wl2 -1 wl3]);

tlex = {'gola','pado','tupiro','bidaku','nimalubu','nomifati', 'comi','sivera','tonicanu'};

    