function [seqs, tlex] = getseqswl2;

% this is what the uttbound condition (4) in SEGsent saw

wl1 = mkwdlist4p(466,2);
wl2 = mkwdlist4p(466,2);
wl3 = mkwdlist4(466,2);

wlana([wl1 -1 wl2 -1 wl3]);

seqs = transutt([wl1 -1 wl2 -1 wl3]);

tlex = {'gola','pado','tupiro','bidaku','nimalubu','nomifati', 'comi','sivera','tonicanu'};

    