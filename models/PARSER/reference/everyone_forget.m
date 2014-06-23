function a = everyone_forget()
  global PRIMITIVES;
  global FORGETTING;
  global WS;
% this goes through WS and decrements all wts of everything by FORGETTING.

  no_of_primitives = length(PRIMITIVES);
  
  for i = 1:no_of_primitives
    letter = PRIMITIVES(i);

    wt_vec = eval([strcat('WS.wts.', letter)]);
    if ~isempty(wt_vec)
      eval([strcat('WS.wts.', letter), '= wt_vec - FORGETTING;']);
    end;
  end;
  return;
  