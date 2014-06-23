data_length;
%choice_data_a20

for i = 1:8
  GGJ_scores{1}(i,:) = mean(Choice_probs(((i-1)*12)+1:i*12,:));
%  GGJ_scores{1}(i,:) = mean(Choice_probs(((i-1)*10)+1:i*10,:));
end

%%
data_tokens;

for i = 1:6
  GGJ_scores{2}(i,:) = mean(Choice_probs(((i-1)*12)+1:i*12,:));
end

%%
data_vocabulary_indep;

for i = 1:3
  GGJ_scores{3}(i,:) = mean(Choice_probs(((i-1)*12)+1:i*12,:));
end

save 2007-08-02-GGJdata.mat GGJ_scores