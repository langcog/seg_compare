function wordlist = mkwordlist2(numTrain,sentPrior)

numwrds = 6;
numspecials = 3;
wordlist(1) = 1;
pause_index = 0;

for a = 2:numTrain
    if pause_index < a
        plen = poissrnd(sentPrior) + 3;
        pause_index = pause_index + plen; 
    end;            
    
    wordlist(a) = randIntZ(1,numwrds);
    
    if pause_index == a
        wordlist(a) = -1;
        wordlist(a-1) = randIntZ(1,numspecials)+numwrds; 
    end;
    
    % make sure there are no repetitions
    while(wordlist(a) == wordlist(a-1))
        wordlist(a) = randIntZ(1,numwrds); 
    end;
end
