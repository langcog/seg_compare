function wordlist = makeWordList(words, numwords, freqs, distrib);

wordlist = [];
for i = 1:numwords
    % choose the word
    thisword = chooseWord(distrib);
    
    % make sure that the distributions are correct and no repetitions
    if i ~= 1
        c = 1;
        while thisword == lastword | freqs(thisword) == 0
            thisword = chooseWord(distrib);
            c = c+1;
            if c > 100, error('Frequencies not working out this time.'); end;
        end;
    end;
    
    freqs(thisword) = freqs(thisword) - 1;
    
    % update
    wordlist = [wordlist words{thisword}];
    lastword = thisword;   
end;
