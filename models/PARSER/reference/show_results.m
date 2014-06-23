function [ORIG_WORDS, WORDS_FOUND, ALL_WORDS_WTS] = show_results_v02()
global WS
global WORDS;
global PRIMITIVES;
global INITIAL_WT;
global THRESHOLD;
global EPSILON;

no_of_primitives = length(PRIMITIVES);
words_wts_found = [];
all_words = [];
all_wts = [];
for i = 1:no_of_primitives

  letter = PRIMITIVES(i);
  word_cellvec = eval([strcat('WS.words.', letter)]);
  index = find(strcmp({letter}, word_cellvec) == 1);
  
  if ~isempty(word_cellvec)
      wt_vec = eval(strcat('WS.wts.', letter));
      max_wt_index = find(wt_vec == max(wt_vec));

      all_words = [all_words, eval(strcat('WS.words.', letter))];
      all_wts = [all_wts, eval(strcat('WS.wts.', letter))];
      
      words_wts_found = [all_words', [num2cell(all_wts)]'];
  end;
end;
  
ORIG_WORDS = []; 
 for i = 1:length(WORDS)
     word_cell = WORDS(i);
     word_str = cell2mat(word_cell);
     len_word_str = length(word_str);
     full_word = [];
     for j = 1:len_word_str
        letter = word_str(j);
        syllable = convert_letter(letter);
        full_word = [full_word, syllable];
     end;
     ORIG_WORDS = [ORIG_WORDS, {full_word}];
  end;

words_found = words_wts_found(:, 1);
wts_found = words_wts_found(:, 2);
WORDS_FOUND = [];
 for i = 1:length(words_found)
     word_cell = words_found(i);
     word_str = cell2mat(word_cell);
     len_word_str = length(word_str);
     wt = cell2mat(wts_found(i));
     if wt > INITIAL_WT
       full_word = [];
       for j = 1:len_word_str
          letter = word_str(j);
          syllable = convert_letter(letter);
          full_word = [full_word, syllable];
       end;
       WORDS_FOUND = [WORDS_FOUND, {full_word}];
     end;
  end;

ALL_WORDS_WTS = [];  
 for i = 1:length(all_words)
     word_cell = all_words(i);
     word_str = cell2mat(word_cell);
     len_word_str = length(word_str);
     full_word = [];
     for j = 1:len_word_str
        letter = word_str(j);
 %this converts to the actual syllables in Saffran et al.  
  %      syllable = convert_letter(letter);
  %      full_word = [full_word, syllable];
  
         full_word = [full_word, letter];

     end;
     ALL_WORDS_WTS = [ALL_WORDS_WTS; [{full_word}, all_wts(i)]];
  end;
 
ORIG_WORDS;
WORDS_FOUND; 

S = cell2struct(ALL_WORDS_WTS, {'word', 'wt'}, 2);
[tmp, index] = sort([S.wt], 'descend');
ALL_WORDS_WTS = ALL_WORDS_WTS(index,:);
no_of_rows = size(ALL_WORDS_WTS, 1);
TEMP = [];
for row = 1:no_of_rows
  wt = cell2mat(ALL_WORDS_WTS(row, 2));
  if (wt-THRESHOLD) > EPSILON
      TEMP = [TEMP; ALL_WORDS_WTS(row,:)];
  end;
end;
ALL_WORDS_WTS = TEMP;
   
return

function syllable = convert_letter(letter)
switch letter
      case 'a' 
         syllable = 'bu';
      case 'b' 
         syllable = 'pa';
      case 'c' 
         syllable = 'ba';
      case 'd' 
         syllable = 'du';
      case 'e' 
         syllable = 'ta';
      case 'f' 
         syllable = 'tu';
      case 'g' 
         syllable = 'da';
      case 'h' 
         syllable = 'bi';
      case 'i' 
         syllable = 'pu';
      case 'j'
         syllable = 'pi';
      case 'k' 
         syllable = 'ti';
      case 'l' 
         syllable = 'ku';
      case 'm' 
         syllable = 'do';
      case 'n' 
         syllable = 'go';
      case 'o' 
         syllable = 'la';
     otherwise
        disp('Unknown syllable');
  end; 
 return;
        
