function word_str = generate_word_str (word_len_of_str)

%this generates the long word string
% cai dec cai abg cai abg bfh cai fka bfh abg cai dec fka abg...
% from which the program works.  It is composed of the six units from 
% WORDS juxtaposed in random order, with no unit repeating itself
% immediately.

global PRIMITIVES WORDS;

word_str = [];
prev_no = 0;
no_of_words = size(WORDS, 2);

for i = 1:word_len_of_str
  new_no = ceil(no_of_words*randtx);
  % if you can have the same word immediately repeated
  while (new_no == prev_no)
    new_no = ceil(no_of_words*randtx);
  end;
  word_str = strcat(word_str, WORDS(new_no)); 
  prev_no = new_no;
end;
word_str = cell2mat(word_str);
  return;
