% make model materials for SSN3
% 7-24-07

clear all; 

ssn.sentLen = 4;
ssn.numTrainWords = 28; %600; %150 sentences
ssn.numTestTrials = 30; % 60
ssn.trainISI = .5;
ssn.testISI = 1;
ssn.testWait = 1;
ssn.fname = 'data/ssn-data.txt';
ssn.vowellen = 225;
ssn.conslen = 25;

conds = [3,4,5,6,9];

% write training sentences and distractors to a file

for i = 1:length(conds)
  i
    
  for j = 1:12
    j
    fid = fopen(['types_varied_tokens/7vocab-idpt' num2str(conds(i),'%01.0f') ...
      'file' num2str(j,'%02.0f') '.txt'],'w');
                
    info.condition = conds(i);
    lex = genLexSSN3(conds(i));
    utts = genTrainUtts(info,lex,ssn);
    dists = genTestItems(info,lex,ssn);
    
    fprintf(fid,'Lexicon: ');
    for k = 1:lex.numWds
      fprintf(fid,'%s\t',lex.wds{k});
    end;
    
    fprintf(fid,'\n\nTraining Sentences:\n');
    
    for k = 1:length(utts)
      fprintf(fid,'%s\n',utts(k).wds);
    end;
    
    fprintf(fid,'\nTest Items:\n');
    
    for k = 1:length(dists)
      fprintf(fid,'%s\t%s\n',dists(k).corr,dists(k).incorr);
    end;
    fclose(fid);
  end;
end;