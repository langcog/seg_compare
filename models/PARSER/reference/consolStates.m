function state = consolStates(states)

state = states(1);

for i = 2:length(states)
  for j = 1:length(states(i).units)
    % look for a state like this one
    added = 0;
    for k = 1:length(state.units)

      if strmatch(states(i).units(j),state.units(k),'exact')
        state.probs(k) = state.probs(k) + states(i).probs(j);
        added = 1;
      end
    end

    % if it wasn't already there, add it 
    if added == 0
      state.probs(length(state.probs)+1) = states(i).probs(j);
      state.units(length(state.units)+1) = states(i).units(j);
    end
  end
end

% now normalize

state.probs = state.probs ./ length(states);