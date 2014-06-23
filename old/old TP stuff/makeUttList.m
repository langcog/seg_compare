function wordlist = makeWordList(words, numwords, freqs, distrib, numutts, uttlen);

for i = 1:numutts    
    wordlist{i} = [];
    
    for j = 1:uttlen;
        % choose the word
        thisword = chooseWord(distrib);

        % make sure that the distributions are correct and no repetitions
        if j ~= 1
            c = 1;
            while thisword == lastword | freqs(thisword) == 0
                thisword = chooseWord(distrib);
                c = c+1;
                if c > 100, error('Frequencies not working out this time.'); end;
            end;
        end;

        freqs(thisword) = freqs(thisword) - 1;

        % update
        wordlist{i} = [wordlist{i} words{thisword}];
        lastword = thisword;   
    end;
end;