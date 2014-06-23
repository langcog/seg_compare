function [wordlist, freqs] = bubblesort(wordlist)

freqs = ones(size(wordlist));

for i = 1:length(wordlist)
    for j = i+1:length(wordlist)
        if strcmp(wordlist{i},wordlist{j}) & ~isempty(wordlist{i})
            for k = j:length(wordlist)-1
                wordlist{k} = wordlist{k + 1};
                freqs(k) = freqs(k+1);
            end;
            wordlist{length(wordlist)} = [];
            freqs(length(wordlist)) = [];
            freqs(i) = freqs(i) + 1;
        end;
    end;
end;

words = wordlist;