wds = {'gOl{bu','p{dOti','tupirO','bid{ku'};


str = [];
wd1 = 1;
for i = 1:100
  next = randint(1,4);
  while next == wd1
    next = randint(1,4);
  end
  
  str = [str wds{next}];
  wd1 = next;
end

  
synthesizeUtt(str,ssn)