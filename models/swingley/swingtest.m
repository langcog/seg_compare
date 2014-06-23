clear all;
[seqs, tlex] = getseqswl;
figure(1);
runswing(seqs,tlex);
title('control, no uttbounds');

clear all;
[seqs, tlex] = getseqswl2;
figure(2);
runswing(seqs,tlex);
title('rewritten, correct uttbound');

clear all;
[seqs, tlex] = getseqswl3;
figure(3);
runswing(seqs,tlex);
title('distributed, uttbound, cond #3');

clear all;
[seqs, tlex] = getseqswl4;
figure(4);
runswing(seqs,tlex);
title('original uttbound, specials at end');