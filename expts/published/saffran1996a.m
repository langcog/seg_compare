% corpus from Saffran, Newport, & Aslin 1996 JML
% constructed 8-22-07
% write to file 12-31-07

clear all;

% babupu bupada dutaba patubi pidabu tutibu
% ba = b, bu = B, bi = 3

lex = {'bBP','Bpd','Dtb','pT3','6dB','T7B'};

% test is three initial changes, three final changes
% from newport, the partwords:
part = {'6dt','Bp3','T7P',...% final changes
  '3tb','tBP','7T3'}; % initial changes

% constructed by me 12-31-07, the non words
% all they have to be is TP=0
non = {'bP3','67b','ptB','DTd','tTP','TB3'};

stream = genEmbeddedStream(lex,1512); % 1512 tokens in the JML paper

% cross fully at test
corr = [];
incorr_non = [];
incorr_part = [];
for i = 1:6
  for j = 1:6
    corr = [corr lex(i)];
    incorr_non = [incorr_non non(j)];
    incorr_part = [incorr_part part(j)];
  end
end
  
%save saffran1996a.mat utts corr incorr

% open file and write everything
fid1 = fopen('Saffran1996JML-nonwords.txt','w');
fid2 = fopen('Saffran1996JML-partwords.txt','w');

fprintf(fid1,'Lexicon: ');
fprintf(fid2,'Lexicon: ');
for k = 1:length(lex)
  fprintf(fid1,'%s\t',lex{k});
  fprintf(fid2,'%s\t',lex{k});
end;

fprintf(fid1,'\n\nTraining Sentences:\n');
fprintf(fid2,'\n\nTraining Sentences:\n');
fprintf(fid1,'%s\n',stream);
fprintf(fid2,'%s\n',stream);

% go through all possible test items
fprintf(fid1,'\nTest Items:\n');
fprintf(fid2,'\nTest Items:\n');
for k = 1:length(corr)
  fprintf(fid1,'%s\t%s\n',corr{k},incorr_non{k});
  fprintf(fid2,'%s\t%s\n',corr{k},incorr_part{k});
end

fclose(fid1);
fclose(fid2);