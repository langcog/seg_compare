% parser2
% perruchet & vintner (1998)
% reimp mcf 1/07, ed 1/22/07
% perruchet uses parameter set below
% let's try concatenating with #s between things
% 
% function state = parser2(train,...
%   maxUnits,shapingThreshold, forgetRate, interfereRate, reactivationGain, beginWeight)

maxUnits = 3;
shapingThreshold = 1;
forgetRate = .05;
interfereRate = .005;
reactivationGain = .5;
beginWeight = 1;

state = initState;
sent = 1;
pos = 1;

while pos < length(train)

  % fprintf('%d sent: %s\n',sent,sents{4}{1}{sent}(pos:end-1));
   
  % determine the input string
  sentToParse = train(pos:min(pos+20,end));
  parse = parseSent(sentToParse,state,shapingThreshold);

  % choose those units that are being used
  units = chooseUnits(parse,maxUnits);
  pos = pos + length(expandUnits(units,state));
  
  % add the input string to the lexicon and interfere/forget everything
  state = updateState(state,units,forgetRate,interfereRate,reactivationGain,beginWeight);
end
  