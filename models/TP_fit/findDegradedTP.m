function [tp] = findDegradedTP(sents,syls,lambda)

% p(a,b) = c(a,b) / c(x,y)
% p(a,x) = c(a,x) / c(x,y)

nsyls = length(syls);
nsents = length(sents);

c_xy = 0;
c_ab = zeros(nsyls) + 1;
c_a = zeros(nsyls,1) + 1;
c_b = zeros(1,nsyls) + 1;
% calculate the counts 
for i = 1:nsents
  this_sent = ['#' sents{i}];
  c_xy = c_xy + length(sents{i}) - 1;
  
  % get bigram counts
  for j = 1:length(this_sent)-1
    from = strfind(syls,this_sent(j));
    to = strfind(syls,this_sent(j+1));
    
    warning off
    c_ab(from,to) = c_ab(from,to) + 1/lambda;
    c_a(from) = c_a(from) + 1/lambda;
    c_b(to) = c_b(to) + 1/lambda;
    warning on
  end
end

% quantities for calculating tp & mi
p_ab = c_ab ./ c_xy;
p_a = c_a ./ c_xy;
p_b = c_b ./ c_xy;
p_as = repmat(p_a,1,nsyls);
p_bs = repmat(p_b,nsyls,1);

% first, transitional probability
warning off
tp = p_ab ./ p_as; 
warning on

