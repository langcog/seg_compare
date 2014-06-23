function sent = consolSents(sents)

sent = [];

for i = 1:length(sents)
  sent = [sent sents{i}];
end
