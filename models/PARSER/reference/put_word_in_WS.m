function a = put_word_in_WS (new_word)
  global WS;
  global INITIAL_WT;
  global EXCITATION;
  global EPSILON;

  %what comes in is a str.  We change it to a cell.
  % you grab its first letter to figure out where it goes.
  start_letter = new_word(1);
  new_word = {new_word};

  old_words = eval(strcat('WS.words.', start_letter));
  old_wts   = eval(strcat('WS.wts.', start_letter));
 
  % if it's new, you put it in its appropriate structure and give it a wt
  % which is INITIAL_WT.
  if ~ismember(new_word, old_words)
     new_wt = INITIAL_WT;
     eval([strcat('WS.words.', start_letter), '= [new_word, old_words];']);
     eval([strcat('WS.wts.', start_letter), '= [new_wt, old_wts];']);
     eval(['words = [new_word, old_words];']);
     eval(['wts = [new_wt, old_wts];']);
  else
 % if it is already in WS, then you simply increment its wt by EXCITATION
     word_cellvec = eval([strcat('WS.words.', start_letter)]);
     index = find(strcmp(new_word, word_cellvec) == 1);
     wt_vec = eval([strcat('WS.wts.', start_letter)]);
     if my_ge(wt_vec(index), INITIAL_WT)
        wt_vec(index) = wt_vec(index) + EXCITATION;   
     else
        wt_vec(index) = wt_vec(index) + INITIAL_WT;
     end;
     eval([strcat('WS.wts.', start_letter), '= wt_vec;']);   
   end; 
return;
        

        