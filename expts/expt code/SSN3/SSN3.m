function SSN2(subname,condition)
% SSN (segmentation sentences new)
% Michael C. Frank
% began programming 9/22/06, piloted 9/26/06
% basic idea: vary utterance boundaries and find the effect on
% learning.  

% 5-18-07
% this is the vocab size version, so condition is # of words in vocab.



%cd /Users/tedlab/Desktop/mlabscripts/SSN3
% set up info and conditions
conditions = [3,4,6,9];
if ~sum(condition==conditions), error(['Need a valid condition, ' ...
                      'check the subject running sheet!']); end;
subinfo.subname = subname; subinfo.condition = condition;

ssn.sentLen = 24; % try this out with sentence length 4
ssn.numTrainWords = 600; % manipulated in this experiment
ssn.numTestTrials = 30; % 30 for both studies
ssn.trainISI = .5;
ssn.testISI = 1;
ssn.testWait = 1;
ssn.fname = 'data/ssn-data.txt';
ssn.vowellen = 225;
ssn.conslen = 25;

% initialize
SSN3init;

tic
% create stims
lex = genLexSSN3(condition);
trainUtts = genTrainUtts(subinfo,lex,ssn);
testItems = genTestItems(subinfo,lex,ssn);

ws = doScreen;

% show instructions
PrintInstructions(ws,'instructions.txt',100,ws.white);

% do training
for i = 1:length(trainUtts)
  synthesizeUtt(trainUtts(i).wds,ssn);
  playWav('stim/utt.wav');
  WaitSecs(ssn.trainISI);
end;
toc

% show test instructions
PrintInstructions(ws,'test.txt',100,ws.white);

% do test
for i = 1:ssn.numTestTrials
  aud2afc(ws,ssn,subinfo,testItems(i),['Which one sounds like a ' ...
                      'word in the language?'],ssn.fname);
end;

% finish up
PrintInstructions(ws,'debrief.txt',100,ws.white);
toc; SSN2end; cls;
