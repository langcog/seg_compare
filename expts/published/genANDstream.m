function s = genANDstream(lex,len)

ind = 1:length(lex);

s = '';
previous_word = 0;
completed = 0;

while ~completed
  fprintf('+')
  words = ones(length(lex),1) .* (len / length(lex));

  for i = 1:len
    word_probs = words/sum(words);
    wd = ind(logical(multirnd(word_probs)));

    c = 1;
    
    p = previous_word > 2;
    w = wd > 2;
    
    while words(wd)==0 || previous_word == wd || p == w
      wd = ind(logical(multirnd(word_probs)));
      w = wd > 2;
      
      c = c + 1; % how many times to get another word
      if c > 100, 
        fprintf('.'); 
        break; 
      end;
    end

    s = [s lex{wd}];
    words(wd) = words(wd) - 1;
    previous_word = wd;
  end

  if sum(abs(words)) < len, completed = 1; end;
end