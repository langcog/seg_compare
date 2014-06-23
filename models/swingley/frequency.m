% frequency.m
% 
% find the frequency of strings in a list

function [iwl, freq] = frequency (wordlist); 

iwl = unique(wordlist); 

for i = 1:length(iwl)
    freq{i} = sum(ismember(wordlist,iwl(i)));
end;
    
% for i = 1:length(iwl)
%     fprintf('%g\t%s\n',freq(i),iwl{i});
% end;