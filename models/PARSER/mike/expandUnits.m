function str = expandUnits(units,state)

str = [];

for i = 1:length(units)
  str = [str state.units{units(i)}];
end
