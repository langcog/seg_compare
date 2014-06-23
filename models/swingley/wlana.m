function [len, numspec, sonend, sbegin, sinmid, lone] = wlana(wl)

c = 1;
sents{1} = [];
for i = 1:length(wl)
    if wl(i) == -1
        c = c + 1;
        sents{c} = [];
    else
        sents{c} = [sents{c} wl(i)];
    end;
end;

numspec = 0;
len = 0;
sonend = 0;
sbegin = 0;
sinmid = 0;
lone = 0;

for i = 1:length(sents)
    numspec = numspec + sum(sents{i} >= 7);
    len = len + length(sents{i});
    if length(sents{i}) > 0
        if sents{i}(1) >= 7
            sbegin = sbegin + 1; 
        elseif sents{i}(length(sents{i})) >= 7
            sonend = sonend + 1; 
        else
            sinmid = sinmid + 1;
        end;
    end;
    
    if length(sents{i}) == 1 %& sents{i}(1) >= 7
        lone = lone + 1;
    end;
end;

numspec = numspec / length(sents);
len = len / length(sents);

fprintf('\navg len: %g, num specials: %g, specials on end: %g, specials begin: %g\n',len,numspec, sonend, sbegin);