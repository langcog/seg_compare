function stps = knToNormalMatrix(kn_probs,ksyls,syls,discounts)

n = length(ksyls);
nn = length(syls);
m = length(discounts);
 
for i = 1:length(discounts)
  stps{i} = zeros(nn);
  
  this_kn = kn_probs(((i-1)*n)+1:i*n,:);
  
  for j = 1:length(ksyls)
    for k = 1:length(ksyls)
      s1 = strfind(syls,ksyls(j));
      s2 = strfind(syls,ksyls(k));
      
      stps{i}(s1,s2) = this_kn(j,k);
    end
  end
end