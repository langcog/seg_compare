function lex = genLexSSN3(condition)

% syls = {'bA','bi','dA','du','ti','tu','kA','ki','lA','lu','gi', ...
%         'gu','pA','pi','vA','vu','zi','zu',...
%         'mA','mu','fA','fi','nu','ni','rA','ri','jA'};
% 
syls = {'b','B','d','D','t','T','k','K','l','L','g', ...
  'G','p','P','v','V','z','Z',...
  'M','m','F','f','N','n','R','r','J'};

% originals   
% syls = {'bA','bi','mu','mi','dA','du','ti','fA','tu','kA','fi','ku',...
%     'lA','ni','lu','gi','gu','nA','pA','ri','pu','vA','vi','ru','zA','zi','ju'};

lex.syls = syls;
lex.numsyls = length(lex.syls);
lex.numPrior = 1;
lex.uttPrior = 1;
lex.numSyls = length(lex.syls);
lex.numWds = condition;

% this specific function creates 6 words. 
% there are 2 2-syllable words, 2 3-syllable words, and 2
% 4-syllable words.  One of each length has a meaning.

ordermask = randperm(lex.numsyls);
wordlist = [1 2 0 0; ...
    3 4 5 0; ...
    6 7 8 9; ...
    10 11 0 0; ...
    12 13 14 0; ...
    15 16 17 18; ...
    19 20 0 0; ...
    21 22 23 0; ...
    24 25 26 27]; 

for i = 1:lex.numWds
    lex.wds{i} = [];
    for j = 1:4
        if wordlist(i,j) ~= 0
            lex.wds{i} = [lex.wds{i} syls{ordermask(wordlist(i,j))}];
        end;
    end;
end;

lex.dists = genDistractors(lex);

end