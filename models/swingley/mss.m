% make sequences
% makes a series of sequences of our language. 

function wordlist = mss(sent);

numTrain = 466;
word_order_mask = randperm(27);
sentPrior = 4;

numwrds = 6;
maxwrdsize = 4;

wordlist(1) = 1;

pause_index = 0;

% set up the sequence of words, with no repetitions, adding pauses if
% necessary.

for a = 2:numTrain
    if pause_index < a, pause_index = pause_index + poissrnd(sentPrior+2); end;    
    wordlist(a) = randIntZ(1,numwrds); 
    if pause_index == a & (sent == 1 | sent == 3), wordlist(a) = -1; end;

    % make sure there are no repetitions
    while(wordlist(a) == wordlist(a-1))
        wordlist(a) = randIntZ(1,numwrds); 
    end;
end %for

