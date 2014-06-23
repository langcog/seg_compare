function a = spread_interference(new_unit)

% this finds all words containing syllable and decreases their wt by
% INTERFERENCE.

% each new unit is looked at.  If it a multi-primitive unit, it must have
% been above INITIAL_WT.  Then we take all of the compontent primitives and
% decrement by INTERFERENCE each of the units, except the unit itself, of
% course, in WS that contain each of the primitives in the new unit.  The
% new unit can also be a primitive, if there were no multi-primitive units
% above the INITIAL_WT threshold.  In this case, if the primitive is above
% the INITIAL WT threshold, then we decrement all other units in WS that
% contain it.  Note:  if a primitive component primitive occurs twice in a
% particular multi-primitive unit, the latter is decremented by
% INTERFERENCE as many times as the primitive occurs in it.

  global PRIMITIVES;
  global INTERFERENCE;
  global WS;
  
  no_of_primitives = length(PRIMITIVES);
  len_new_unit = length(new_unit);
    
  for unit_no = 1:len_new_unit
  % here we take apart the new_unit into primitives (= syllables)
    syllable = new_unit(unit_no);
    
    for i = 1:no_of_primitives
        prim = PRIMITIVES(i);    
% we find the list of chunks in WS associated with each of the primitives
% in turn and their corresponding weights.
        word_vec = eval([strcat('WS.words.', prim)]);
        wt_vec = eval([strcat('WS.wts.', prim)]);
% we convert these to (padded) matrices and then find all occurrences of 
% syllable we are considering in the new_unit
        [X,Y] = find(str2mat(word_vec) == syllable);
        change_mat = [X,Y];
% change_mat tells us where all occurrences of the syllable are.
        no_of_changes = size(change_mat, 1);
        for row_no = 1:no_of_changes
          word_index = change_mat(row_no, 1);
% we make sure that we don't decrement the new_unit itself.
          if ~strcmp(cell2mat(word_vec(word_index)), new_unit)
             wt_vec(word_index) = wt_vec(word_index) - INTERFERENCE;
          end;
        end;
        eval([strcat('WS.wts.', prim), '= wt_vec;']);
    end;
    
  end;
  return;
  