function state = initState(sents)

chars = unique([sents{:}]);
chars = chars(2:end); % remove #

for i = 1:length(chars)
  state.units{i} = chars(i);
end

state.weights = ones(1,length(state.units));
 