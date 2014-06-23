function [words, wts] = find_words_in_WS (start_letter)
%this finds all words in WS that start with start_letter.

global WORDS; 
global WS;  
     words = strcat('WS.words.', start_letter);
     wts   = strcat('WS.wts.', start_letter);
     
     words = eval(words);
     wts   = eval(wts);
  return;
      