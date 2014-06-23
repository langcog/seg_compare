subs = unique(subname)

for i = 1:length(subs)
  this_cond = cond(cellfun(@(x) strcmp(x,subs{i}),subname));
  a{i} = unique(this_cond);
end