function utts = genTrainUtts(info,lex,ssn)
% frequency balanced version

% calculate utterance lengths
sentLen = info.condition;
totalWords = ssn.numTrainWords;
numSents = floor(totalWords / sentLen);
sentLens = ones(numSents,1)*info.condition;
numEachWord = ceil(totalWords/lex.numWds);
words = ones(1,lex.numWds)*numEachWord;
acceptableReps = ceil(info.condition/lex.numWds);
ind = 1:lex.numWds;

completed = 0;

fprintf('Generating lexion, this may take a minute with lists 12 and 24.\n');

while ~completed
  fprintf('+')
    
  words = ones(1,lex.numWds)*numEachWord;
  % for each utterance
  for i = 1:numSents
    
    utts(i).wds = [];
    utts(i).wdlist = [];
		
    % for each word in the utterance
    for j = 1:sentLens(i)
      % choose it according to how many words we have left
      word_probs = words/sum(words);
      wd = ind(logical(multirnd(word_probs)));
     
      % check that there are no repetitions in a short sentence and
      % that all words are used equally.                        
      c = 1;
      
      if j == 1, previous = 0; else previous = utts(i).wdlist(j-1); end;
      
      while words(wd)==0 | previous == wd | ...
             sum(utts(i).wdlist == wd) >= acceptableReps
        wd = ind(logical(multirnd(word_probs)));
        c = c + 1; % how many times to get another word
        if c > 100, 
          fprintf('.'); 
          break; 
        end;
      end;
      
      utts(i).wds = [utts(i).wds lex.wds{wd}];
      utts(i).wdlist(j) = wd;
      words(wd) = words(wd) - 1;
    end;	
  end;
  
  if sum(abs(words)) <= 2 * info.condition, completed = 1; end;
end;