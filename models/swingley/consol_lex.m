% consol_lex (master list, subordinate list)
% only include subordinates if they are not in the master list.
function end_list = consol_lex(master_list,sub_list);

end_list = master_list;

for i = 1:length(sub_list)
  if sum(~cellfun('isempty',strfind(master_list,sub_list{i}))) == 0
    end_list = [end_list sub_list{i}];
  end
end    