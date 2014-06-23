function a = randpermtx (N)
  Orig = 1:N;
  Temp = [];
  for vec_length = N:-1:1
   index = mod(round(randtx*vec_length), vec_length) + 1;
   num = Orig(index);
   Orig = rmrc(Orig, 'c', index);
   Temp = [Temp, num];
  end;
  
  a = Temp;
return;