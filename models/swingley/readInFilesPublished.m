function [sents,corr,incorr,syls] = readInFilesPublished(name)
%clear corr sents incorr

fid = fopen(name);
fscanf(fid,'Lexicon:\t',1);
lex = fgetl(fid); 
syls= reshape([unique(lex)],[1 length(unique(lex))]);
syls(1) = [];
syls(end+1) = '#';

fgets(fid); fgets(fid);   

i = 2;
sents{1} = ' ';
while ~isempty(sents{i-1})
  sents{i} = fgetl(fid);
  i = i + 1;
end

sents(1) = []; sents(end) = [];
for i = 1:length(sents)
  sents{i} = [sents{i} '#'];
end

fgetl(fid);

i = 2;
corr{1} = ' ';
while ~isempty(corr{i-1})
  corr{i} = fscanf(fid,'%s\t',1);
  incorr{i} = fscanf(fid,'%s\n',1);
  i = i + 1;
end

corr([1 end]) = [];
incorr([1 end]) = [];