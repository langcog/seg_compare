function [tp mi stp] = findCounts(sents,syls)

% mi = p(a,b)/p(a)*p(b)
% p(a,b) = c(a,b) / c(x,y)

nsyls = length(syls);
nsents = length(sents);

% calculate the counts 
c_xy = 0; c_x = 0;
for i =1:nsents
  c_xy = c_xy + length(sents{i}) - 1;
  c_x = c_x + length(sents{i}) - 1;
end

c_ab = zeros(nsyls);
c_a = zeros(nsyls,1);

for i = 1:nsents
  this_sent = sents{i};
  
  % get bigram counts
  for j = 1:length(this_sent)-1
    from = strfind(syls,this_sent(j));
    to = strfind(syls,this_sent(j+1));
    c_ab(from,to) = c_ab(from,to) + 1;
  end
  
  % get unigram counts
  for j = 1:length(this_sent)
    syl = strfind(syls,this_sent(j));
    c_a(syl) = c_a(syl) + 1;
  end    
end

p_ab = c_ab ./ c_xy;
p_a = c_a ./ c_x;
p_b = p_a';

p_as = repmat(p_a,1,nsyls);
p_bs = repmat(p_b,nsyls,1);

mi = p_ab ./ (p_as .* p_bs);
tp = p_ab ./ p_as;
mi = mi .* log(mi);
mi(isnan(mi)) = 0;
tp(isnan(tp)) = 0;

% do smoothed counts too
% add-1 smoothing: numer + 1, denom + N
ps_ab = (c_ab + 1) ./ (c_xy + nsyls.^2);
ps_a = (c_a + 1) ./ (c_x + nsyls);
ps_as = repmat(ps_a,1,nsyls);
stp = ps_ab ./ ps_as;
