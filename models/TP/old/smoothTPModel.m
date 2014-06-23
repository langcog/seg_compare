function tps = smoothTPModel(sents,syls)

% mi = p(a,b)/p(a)*p(b)
% p(a,b) = c(a,b) / c(x,y)

% calculate the counts 
c_xy = 0; c_x = 0;
for i =1:length(sents)
  % is this right?
  c_xy = c_xy + length(sents{i}) - 1;
  c_x = c_x + length(sents{i})-1;
end

c_ab = zeros(length(syls));
c_a = zeros(length(syls),1);

for i = 1:length(sents)
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

p_as = repmat(p_a,1,length(syls));
tps = p_ab ./ p_as;
tps(isnan(tps)) = 0;
