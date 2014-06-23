function SSN(subname,condition)
% SSN (segmentation sentences new)
% Michael C. Frank
% began programming 9/22/06, piloted 9/26/06
% basic idea: vary utterance boundaries and find the effect on
% learning.  

cd /Users/tedlab/Desktop/mlabscripts/SSN
% set up info and conditions
conditions = [1,2,3,4,6,8,12,24];
if ~sum(condition==conditions), error(['Need a valid utterance length, ' ...
                      'check the subject running sheet!']); end;
subinfo.subname = subname; subinfo.condition = condition;

ssn.numTrainWords = 600; % 1200 hmm
ssn.numTestTrials = 30; % 60
ssn.trainISI = .5;
ssn.testISI = 1;
ssn.testWait = 1;
ssn.fname = 'data/ssn-data.txt';
ssn.vowellen = 225;
ssn.conslen = 25;

% initialize
SSNinit;

tic
% create stims
lex = genLex;
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
toc; SSNend; cls;
