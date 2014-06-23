function tps = findTPs(sents,syls)

tcs = zeros(length(syls));

for i = 1:length(sents)
  this_sent = sents{i};
  
  for j = 1:length(this_sent)-1
    from = strfind(syls,this_sent(j));
    to = strfind(syls,this_sent(j+1));
    tcs(from,to) = tcs(from,to) + 1;
  end
end

tps = tcs ./ repmat(sum(tcs,2),1,length(syls));
tps(isnan(tps)) = 0;