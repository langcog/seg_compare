function [tp pw_mi stp freqs] = findCounts(sents,syls,lambda)

% p(a,b) = c(a,b) / c(x,y)
% p(a,x) = c(a,x) / c(x,y)

nsyls = length(syls);
nsents = length(sents);

c_xy = 0;
c_ab = zeros(nsyls);
c_a = zeros(nsyls,1);
c_b = zeros(1,nsyls);
% calculate the counts 
for i = 1:nsents
  this_sent = [sents{i}];
  c_xy = c_xy + length(sents{i}) - 1;
  
  % get bigram counts
  for j = 1:length(this_sent)-1
    from = strfind(syls,this_sent(j));
    to = strfind(syls,this_sent(j+1));
    c_ab(from,to) = c_ab(from,to) + 1;
    c_a(from) = c_a(from) + 1;
    c_b(to) = c_b(to) + 1;
  end
end

% quantities for calculating tp & mi
p_ab = c_ab ./ c_xy;
p_a = c_a ./ c_xy;
p_b = c_b ./ c_xy;
p_as = repmat(p_a,1,nsyls);
p_bs = repmat(p_b,nsyls,1);
% p_nab = 1 - p_ab;
% p_nas = 1 - p_as;
% p_nbs = 1 - p_bs;
% p_nb = 1 - p_b; 

% first, transitional probability
warning off;
tp = p_ab ./ p_as; 
pw_mi =  log2(p_ab ./ (p_as .* p_bs)); 
warning on;
pw_mi(isnan(pw_mi)) = 0;
pw_mi(isinf(pw_mi)) = 0;

% do smoothed counts too
% add-1 smoothing: numer + 1, denom + N
used_rows = repmat(c_a>0,1,nsyls)&repmat([c_a>0]',nsyls,1);
sc_ab = c_ab;
sc_ab(used_rows) = sc_ab(used_rows) + lambda;
sc_xy = c_xy;
sc_xy = sc_xy + ((sum(used_rows(:,1)).^2).*lambda);
ps_ab = sc_ab ./ sc_xy;
sc_a = c_a;
sc_a(sc_a~=0) = sc_a(sc_a~=0) + lambda;
% ps_a = sc_a ./ sc_xy;
% ps_as = repmat(ps_a,1,nsyls);
% ps_ab = sc_ab ./ sc_xy;
% ps_a = (sum(c_ab,2) + lambda) ./ (c_xy + (nsyls*lambda));
% ps_as = repmat(ps_a,1,nsyls);
warning off;
stp = ps_ab ./ repmat(sum(ps_ab,2),1,nsyls);
warning on;

% here are freqs as well
freqs = c_ab ./ sum(sum((c_ab)));