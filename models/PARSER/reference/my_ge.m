function logical_value = my_ge(A,B)
  global EPSILON
  
  if (abs(A-B) <= EPSILON) || (A-B)>= EPSILON
      logical_value = 1;
  else
      logical_value = 0;
  end;
  
  return;