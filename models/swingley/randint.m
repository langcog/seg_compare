% randIntZ produces a random integer between m and n, including m and n. 
% m must be smaller than n. 

function x = randint(m,n); 
    x = floor(rand*(n-m+1))+m;
end % randIntZ
