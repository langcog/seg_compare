function i = geti(toconv)

if regexp(toconv,'[a-z]');
    i = double(toconv) - 96;
elseif regexp(toconv,'[A-Z]')
    i = double(toconv) - 64;
elseif regexp(toconv,'\d')
    i = str2num(toconv) + 27;
else
    i = 37;
end;