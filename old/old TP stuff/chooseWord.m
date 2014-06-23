function w = chooseWord(d)

d = cumsum(d);
p = rand;
ind = 1:length(d);
w = min(ind(d>p));