function parse = parseSent(sent,state,shapingThreshold)

% walk through finding potential words and take the longest ones
pos = 1;
parseL = 1;

while pos <= length(sent)  
  
  i = max(cellfun(@(x) length(x), state.units));
  while i >= 1
    % find all the possible strings at this length
    candidate = strmatch(sent(pos:min(pos+i-1,end)),state.units,'exact');

    % if there are any
    if ~isempty(candidate)
      % if it's above threshold
      if max(state.weights(candidate)) >= shapingThreshold
        parse(parseL) = candidate;
        i = 0; % end now
      end
    end
    i = i - 1;
  end
  
  pos = pos + length(state.units{parse(parseL)});
  parseL = parseL + 1;
end