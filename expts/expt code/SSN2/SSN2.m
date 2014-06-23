function SSN2(subname,condition)
% SSN (segmentation sentences new)
% Michael C. Frank
% began programming 9/22/06, piloted 9/26/06
% basic idea: vary utterance boundaries and find the effect on
% learning.  

% this is the exposure length version, so the condition is the number of
% words, added 150 on 5-18-07 added 48 on 5-19

cd('~/matlab/goldwater/expts/expt code/SSN2')
% set up info and conditions
conditions = [48,100,300,600,900,1200];
if ~sum(condition==conditions), error(['Need a valid utterance length, ' ...
                      'check the subject running sheet!']); end;
subinfo.subname = subname; subinfo.condition = condition;

ssn.sentLen = 4; % try this out with sentence length 4
ssn.numTrainWords = condition; % manipulated in this experiment
ssn.numTestTrials = 30; % 30 for both studies
ssn.trainISI = .5;
ssn.testISI = 1;
ssn.testWait = 1;
ssn.fname = 'data/ssn-data.txt';
ssn.vowellen = 225;
ssn.conslen = 25;

% initialize
SSN2init;

tic
% create stims
lex = genLex;
trainUtts = genTrainUtts(subinfo,lex,ssn);
testItems = genTestItems(subinfo,lex,ssn);

ws = doScreen;

% show instructions
PrintInstructions(ws,'instructions.txt',100,ws.white);

disp('waiting to test!')
disp(datestr(now))
WaitSecs(10800);
disp('beginning testing!')
disp(datestr(now))

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
