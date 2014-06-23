function yn = isVowel(lett)

if ismember(lett,{'a','e','i','o','u','A','E','I','O','U','{','@'})
    yn = 1;
else
    yn = 0;
end;