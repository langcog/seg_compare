function tf = isemptyca(ca)

l = length(ca);
c = 0;

for i = 1:l
    c = c + isempty(ca{i});
end;

if c ~= l, tf = 0; else tf = 1; end;