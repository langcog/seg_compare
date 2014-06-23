%% this creates the "less data" condition: train on only 4% of data

ssn.numTrainWords = 600;
ssn.numTestTrials = 60; 
ssn.trainISI = .5;
ssn.testISI = 1;
ssn.testWait = 1;
ssn.fname = 'data/ssn-data.txt';
ssn.vowellen = 225;
ssn.conslen = 25;

conds = [1 2 3 4 6 8 12 24];

% explicitly take 4%
ssn.numTrainWords = ssn.numTrainWords * .04;

% write training sentences and distractors to a file
for i = 1:8
  i
  info.condition = conds(i);    
    
  for j = 1:12
    j
    fid = fopen(['../../less_data_4percent/expt1/len' num2str(info.condition,'%02.0f') ...
                   'file' num2str(j,'%02.0f') '-4percent.txt'],'w');
    lex = genLexSets;
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