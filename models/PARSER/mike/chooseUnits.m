function units = chooseUnits(parse,maxUnits)

n = Randi(maxUnits);

while n > length(parse)
  n = Randi(maxUnits);
end

units = parse(1:n);