function a = modify_wt(new_unit, modified_by)
  global WS;
  
  new_word = cell2mat(new_unit);
  start_letter = new_word(1);

  old_words = eval(strcat('WS.words.', start_letter));
  old_wts   = eval(strcat('WS.wts.', start_letter));
 
  index = find(strcmp(old_words, new_unit));
  old_wts(index) = old_wts(index) + modified_by;
  new_wts = old_wts;
    
  eval([strcat('WS.wts.', start_letter), '= new_wts;']);
  return;