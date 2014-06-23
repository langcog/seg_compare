function [dists,ord] = genDistractors(lex);

allwords = [];
n = lex.numWds;

% randomly concatenate all the words
for i = 1:lex.numWds
    allwords = [allwords lex.wds{i}];
end;

%% two-character syllable case
% c = 3;
% 
% % now resegment them into words of the same lengths
% dists{1} = [];
% for i = 1:n - 1
%     dists{i + 1} = allwords(c:c+length(lex.wds{i+1})-1);
%     c = c + length(lex.wds{i+1});
% end;
% 
% dists{1} = [allwords(c:end) allwords(1:2)];

%% one-character syllable case
c = 2;

% now resegment them into words of the same lengths
dists{1} = [];
for i = 1:n - 1
  dists{i+1} = allwords(c:c+length(lex.wds{i+1})-1);
  c = c + length(lex.wds{i+1});
end;

dists{1} = [allwords(c:end) allwords(1)];