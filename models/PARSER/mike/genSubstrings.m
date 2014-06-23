function ss = genSubstrings(string)

ss = {};
l = length(string);

for i = 1:l-1 % for each length
  for j = 1:l-i+1 % for each potential position
    ss = [ss string(j:j+i-1)];
  end
end