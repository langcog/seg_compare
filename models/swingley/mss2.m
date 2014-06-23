% make sequences
% makes a series of sequences of our language. 
% this is number 2 because it adds a low frequency word once in a while.

function wordlist = mss2(sent);

numTrain = 466;
word_order_mask = randperm(27);
sentPrior = 4;

numwrds = 6;
numspecials = 3;
maxwrdsize = 4;

wordlist(1) = 1;

pause_index = 0;

% set up the sequence of words, with no repetitions, adding pauses if
% necessary.

for a = 2:numTrain
    if pause_index < a, pause_index = pause_index + poissrnd(sentPrior); end;            
    wordlist(a) = randIntZ(1,numwrds);
    if pause_index == a & sent >= 1, wordlist(a) = -1; end;

    if wordlist(a) == -1 & sent ~= 3
        wordlist(a-1) = randIntZ(1,numspecials)+numwrds; 
    elseif wordlist(a) == -1 & sent == 3
        % find the boundaries of the sentence and randomly insert a special in condition 3
        % --MCF 3/29/06
        
        % find the last -1 before this one
        for i = 1:length(wordlist)-1
            if wordlist(a-i) == -1, break; end;
        end;
        
        backpos = randIntZ(1,i-1);      
        wordlist(a-backpos) = randIntZ(1,numspecials)+numwrds;        
    end;
    
    % make sure there are no repetitions
    while(wordlist(a) == wordlist(a-1))
        wordlist(a) = randIntZ(1,numwrds); 
    end;
end %for



