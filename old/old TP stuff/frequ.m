function freqs = frequ(string,unit)

freqs.string = string;

for i = 1:unit:length(string)-(unit-1)
    thisunit = string(i:i+unit-1);
    
    if isfield(freqs,thisunit)
        freqs.(thisunit) = freqs.(thisunit) + 1;
    else
        freqs.(thisunit) = 1;
    end;
end;