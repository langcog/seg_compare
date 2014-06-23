function state = updateState(state,units,forgetRate,interfereRate,reactivationGain,beginWeight)


% update for each chosen unit

newUnit = [];
for i = 1:length(units)
  newUnit = [newUnit state.units{units(i)}];
  
  % add the reactivation gain to that unit
  state.weights(units(i)) = state.weights(units(i)) + reactivationGain;
  
  % interfere with all subcomponents of each bit
  substr = genSubstrings(state.units{units(i)});
    
  for j = 1:length(substr)
    state.weights(strmatch(substr{j},state.units)) = ...
      state.weights(strmatch(substr{j},state.units)) - interfereRate;
  end
end

% now do forgetting
state.weights = state.weights - forgetRate;

% now add newUnit if it doesn't exist
if isempty(strmatch(newUnit,state.units))
  state.weights(length(state.units)+1) = beginWeight;
  state.units{length(state.units)+1} = newUnit;
  %fprintf('\tadding %s \n',newUnit);
else
  % else add reactivation gain and erase forgetting 
  state.weights(strmatch(newUnit,state.units)) = ...
    state.weights(strmatch(newUnit,state.units)) + reactivationGain + forgetRate; 
  %fprintf('\treactivating %s \n',newUnit);
end

% consolidate
i = 1;
while i < length(state.units)
  if length(state.units{i})>1 && state.weights(i) <= 0
    state.units(i) = [];
    state.weights(i) = [];
  elseif length(state.units{i}) == 1
    if state.weights(i) < beginWeight
      state.weights(i) = beginWeight;
    end
  end
  i = i + 1;
end

% print it
% for i = 20:length(state.units)
%   %fprintf('%s   ',state.units{i});
% end
% fprintf('\n'); 
% for i = 20:length(state.units)
%   fprintf('%1.1f',state.weights(i));
%   for j = 1:length(state.units{i})
%     fprintf(' ');
%   end
% end
%   
% fprintf('\n');
