% [words, freqs] = fsortby(words, freqs)
% uses bubblesort to sort one array by another.  slow!
function [words, freqs] = fsortby(words,freqs);

i = 1;
while i <= length(words)
  j = 1;
  while j <= length(words) - i
    %fprintf('%d %d %d\n',i,j,length(words))
    if freqs{j+1} > freqs{j}
      tempword = words{j}; 
      tempfreq = freqs{j};
      words{j} = words{j+1}; 
      freqs{j} = freqs{j+1};
      words{j+1} = tempword; 
      freqs{j+1} = tempfreq;
    end;
    j = j + 1;
  end;
  i = i + 1;
end;
