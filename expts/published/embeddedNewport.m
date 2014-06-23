% make model materials for the Newport & Aslin embedded segments experiment
% 12-31-07
%
% WORDS
% dow kuw bey
% kae tiy baa
% tae gow pey
% giy duw paa
% 
% 1-2 TEST ITEMS
% dow kuw 
% kae tiy 
% tae gow 
% giy duw 
% 
% 3-1 TEST ITEMS
% bey tae 
% baa giy 
% pey dow 
% paa kae 

% Saffran et al. 1996 JML has 4536 syllables for 21 min
% maybe expt A has 1134 for ~5 min 
% and maybe expt B has 2x4536 for 2 x ~22 min

clear all; 

lex = {'dkb','KtB','Tgp','GDP'};
test12 = {'dk','Kt','Tg','GD'};
test31 = {'bT','BG','pd','PK'};
len = 4536/3;

% generate training stream
streamA = genANDstream(lex,len);

% open file and write everything
fid1 = fopen('embeddedNewportAslinUnpub.txt','w');

fprintf(fid1,'Lexicon: ');
for k = 1:length(lex)
  fprintf(fid1,'%s\t',lex{k});
end;

fprintf(fid1,'\n\nTraining Sentences:\n');
fprintf(fid1,'%s\n',streamA);

% go through all possible test items
fprintf(fid1,'\nTest Items:\n');
for k = 1:length(test12)
  for j = 1:length(test31)
    fprintf(fid1,'%s\t%s\n',test12{k},test31{j});
  end;
end

fclose(fid1);