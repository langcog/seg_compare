clear all;
%wl = mss2(3);
%wl = mkwdlist4(466,2);

for i = 1:100
    wl = mss2(2);
    [len(i), numspec(i), sonend(i), sbegin(i), smid(i), lone(i)] = wlana(wl);
end;

fprintf('\nMSS2(2): avg len: %g, num specials: %g, send: %g, sbegin: %g, smid: %g, lone: %g\n'...
    ,mean(len),mean(numspec), mean(sonend), mean(sbegin),mean(smid),mean(lone));

for i = 1:100
    wl = mss2(3);
    [len(i), numspec(i), sonend(i), sbegin(i), smid(i), lone(i)] = wlana(wl);
end;

fprintf('\nMSS2(3): avg len: %g, num specials: %g, send: %g, sbegin: %g, smid: %g, lone: %g\n'...
    ,mean(len),mean(numspec), mean(sonend), mean(sbegin),mean(smid),mean(lone));

for i = 1:100
    wl = mkwdlist4(466,2);
    [len(i), numspec(i), sonend(i), sbegin(i), smid(i), lone(i)] = wlana(wl);
end;

fprintf('\nmkwdlist4(466,2): avg len: %g, num specials: %g, send: %g, sbegin: %g, smid: %g, lone: %g\n'...
    ,mean(len),mean(numspec), mean(sonend), mean(sbegin),mean(smid),mean(lone));

