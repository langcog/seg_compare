% getnum takes a string of 0s and 1s and reports the indeces of the 1s
function nums = getnum(vec)

l = length(vec);

q = 1:l;
nums = q(vec);