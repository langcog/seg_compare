% compare_lex takes two strings of words and returns 1 if they're the same,
% 0 otherwise

function same = compare_lex(lex1,lex2)

if length(lex1) ~= length(lex2)
    same = 0;
else
    same = 1;
    
    for i = 1:length(lex1)
        if strcmp(lex1{i},lex2{i});
            same = 0;
        end;
    end;
end;