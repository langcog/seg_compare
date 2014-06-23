function items = genTestItems(info,lex,ssn)
% choose pairs of test items matched by length

for i = 1:ssn.numTestTrials
  items(i).corr = lex.wds{Randi(lex.numWds)};
  
  % prevent repeats in testing
  if i > 1, while strcmp(items(i).corr,items(i-1).corr)
      items(i).corr = lex.wds{Randi(lex.numWds)};
    end; 
  end;
  
  % find a matched length distractor that didn't get used last time either
  items(i).incorr = lex.dists{Randi(lex.numWds)};
  
  while length(items(i).incorr)~=length(items(i).corr)
    items(i).incorr = lex.dists{Randi(lex.numWds)};
    if i > 1, while strcmp(items(i).incorr,items(i-1).incorr)
        items(i).incorr = lex.dists{Randi(lex.numWds)};
      end;
    end;
  end;
  
  items(i).length = length(items(i).corr);
end;
  