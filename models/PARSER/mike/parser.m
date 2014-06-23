% parser
% perruchet & vintner (1998)
% reimp mcf 1/07
% perruchet uses parameter set below

% function state = parser(sents,...
%   maxUnits,shapingThreshold, forgetRate, interfereRate, reactivationGain, beginWeight)

clear all
load cogsci12_12type_16languages
sents = sents{1}{4}{2};
sents = repmat(sents,1,4);
% load ../../model_materials.mat
% sents = sents{1}{5}{1};

maxUnits = 3;
shapingThreshold = 1;
forgetRate = .05;
interfereRate = .005;
reactivationGain = .5;
beginWeight = 1;

state = initState2(sents);
sent = 1;
pos = 2;

while sent <= length(sents)
  % fprintf('%d sent: %s\n',sent,sents{4}{1}{sent}(pos:end-1));
   
  % determine the input string
  sentToParse = sents{sent}(pos:end-1);
  parse = parseSent(sentToParse,state,shapingThreshold);
  
  if pos == 2
    parses{sent} = parse;
  end

  % choose those units that are being used
  units = chooseUnits(parse,maxUnits);
  pos = pos + length(expandUnits(units,state));
   
  % add the input string to the lexicon and interfere/forget everything
  state = updateState(state,units,forgetRate,interfereRate,reactivationGain,beginWeight);

  % if we're at the end of this sentence, advance
  if pos >= length(sents{sent})
    %fprintf('%d ',sent);
    sent = sent + 1;
    pos = 2;
  end
end

state.probs = state.weights ./ sum(state.weights);