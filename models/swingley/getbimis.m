% convert a MI table into a list of MIs for each bigram
function bimis = getbimis(rbis,mis,syls)

for i = 1:length(rbis)
  from = strfind(syls,rbis{i}(1));
  to = strfind(syls,rbis{i}(2));
  bimis{i} = mis(from,to);
end
