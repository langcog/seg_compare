function wordlist = consolidate(words);

w = reshape(words,1,[]);

c = 1;
for i = 1:length(w)
    if ~isempty(w{i})
        wordlist{c} = w{i};
        c = c+1;
    end;
end;

end