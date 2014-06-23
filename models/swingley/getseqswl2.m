function [seqs, tlex] = getseqswl2;

% this is what the uttbound condition (4) in SEGsent saw

wl1 = mss(3);
wl2 = mss(3);
wl3 = mss2(3);

wlana([wl1 -1 wl2 -1 wl3]);

seqs = transutt([wl1 -1 wl2 -1 wl3]);

tlex = {'gola','pado','tupiro','bidaku','nimalubu','nomifati', 'comi','sivera','tonicanu'};

    