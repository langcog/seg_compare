function t = findThreshold(lex,w)

t = 0;

for i = length(lex):-1:1
  this_lex = lex{i};
  
  if sum(strcmp(this_lex,w)) > 0
    t = i;
    return
  end;
end;
    