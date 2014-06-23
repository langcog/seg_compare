% parser
% perruchet & vintner (1998)
% reimp mcf 1/07
% perruchet uses parameter set below
% lazy parser 1/08 splits up strings for efficiency

function state = lazyParser(sents,...
  maxUnits,shapingThreshold, forgetRate, interfereRate, reactivationGain, beginWeight)

% maxUnits = 3;
% shapingThreshold = 1;
% forgetRate = .05;
% interfereRate = .005;
% reactivationGain = .5;
% beginWeight = 1;

state = initState;
sent = 1;
pos = 1;

% split sentences up so that it goes fast, this is cheating.
i = 1;
sents{1}(end) = []; % cut out the # at the end
while i <= length(sents)
  if length(sents{i}) > 24
    sents{end+1} = sents{i}(25:end);
    sents{i} = sents{i}(1:24);
  end
  i = i + 1;
end

disp(['sentences: ' num2str(length(sents))]);

while sent <= length(sents)
  % fprintf('%d sent: %s\n',sent,sents{4}{1}{sent}(pos:end-1));
   
  % determine the input string
  sentToParse = sents{sent}(pos:end-1);
  parse = parseSent(sentToParse,state,shapingThreshold);

  % choose those units that are being used
  units = chooseUnits(parse,maxUnits);
  pos = pos + length(expandUnits(units,state));
   
  % add the input string to the lexicon and interfere/forget everything
  state = updateState(state,units,forgetRate,interfereRate,reactivationGain,beginWeight);

  % if we're at the end of this sentence, advance
  if pos >= length(sents{sent})
    %fprintf('%d ',sent);
    sent = sent + 1;
    pos = 1;
  end
end

state.probs = state.weights ./ sum(state.weights);