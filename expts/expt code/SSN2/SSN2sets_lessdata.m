%% this creates the "less data" condition: train on only 4% of data
% make model materials for SSN2 
% 7-24-07
% less data 7-7-09

ssn.sentLen = 4;
ssn.numTestTrials = 30; % 60
ssn.trainISI = .5;
ssn.testISI = 1;
ssn.testWait = 1;
ssn.fname = 'data/ssn-data.txt';
ssn.vowellen = 225;
ssn.conslen = 25;

% explicitly take 4%
old_conds = [48,100,300,600,900,1200];
conds = round([48,100,300,600,900,1200] .* .04);

% write training sentences and distractors to a file
for i = 1:6
  i
  info.condition = conds(i);    
    
  for j = 1:12
    j
    fid = fopen(['../../less_data_4percent/expt2/token' num2str(old_conds(i),'%04.0f') ...
      'file' num2str(j,'%02.0f') '-4percent.txt'],'w');
                
    ssn.numTrainWords = info.condition;
    
    lex = genLexSets;
    
    try
      utts = genTrainUtts(info,lex,ssn);
    catch
      utts = []; % in case there are no utterances
    end
    
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