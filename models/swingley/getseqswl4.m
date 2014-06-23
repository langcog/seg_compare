function [seqs, tlex] = getseqswl4;

% this is what the uttbound condition (4) in SEGsent saw

wl1 = mss(1);
wl2 = mss(1);
wl3 = mss2(1);

wlana([wl1 -1 wl2 -1 wl3]);

seqs = transutt([wl1 -1 wl2 -1 wl3]);

tlex = {'gola','pado','tupiro','bidaku','nimalubu','nomifati', 'comi','sivera','tonicanu'};

 