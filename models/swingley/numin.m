% number of elements in array 2 that are uniquely represented in array 1

function num = numin(master, candidates);

num = 0;

for i = 1:length(candidates)
    for j = 1:length(master)
        if strcmp(master{j},candidates{i})
            num = num + 1;
            master{j} = [];
        end;
    end;
end;
