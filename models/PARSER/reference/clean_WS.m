function a = clean_WS()
  global PRIMITIVES;
  global THRESHOLD;
  global WS;
%this goes through all of WS and removes anything below THRESHOLD wt. 
  no_of_primitives = length(PRIMITIVES);
  
  for i = 1:no_of_primitives
    letter = PRIMITIVES(i);
    wt_vec = eval([strcat('WS.wts.', letter)]); 
    indices_to_remove = find(wt_vec < THRESHOLD);
    wt_vec(indices_to_remove) = [];
    
    word_vec = eval([strcat('WS.words.', letter)]); 
    word_vec(indices_to_remove) = [];
    
    eval([strcat('WS.wts.', letter), '= wt_vec;']);
    eval([strcat('WS.words.', letter), '= word_vec;']);
 
    % it also makes sure that the primitives never disappear from WS.
     if ~ismember(letter, word_vec)
         new_wt = THRESHOLD;
         eval([strcat('WS.words.', letter), '= [letter, word_vec];']);
         eval([strcat('WS.wts.', letter), '= [new_wt, wt_vec];']);
      end;
  end;
  return;
  