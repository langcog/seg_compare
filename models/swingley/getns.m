function syls = getns(list,mis,criterion)

syls = {};
l = length(list);

listbymi = sortby(list,mis);

c = 1;

for i = 1:l
    curr = list{i};
    if getpercentile(list,curr) > criterion & getpercentile(listbymi,curr) > criterion
        syls{c} = curr;
        c = c+1;
    end;
end;