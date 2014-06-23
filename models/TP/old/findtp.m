function [tp, varargout] = findtp3(seq,varargin)

% figure out how many elements there are    
if nargin > 1
    elements  = varargin{1};
else
    for i = 1:2:length(seq)
        elemlist{((i-1)/2)+1} = seq(i:i+1);
    end;
    elements = unique(elemlist);
end;

AB = zeros(length(elements));

% get AB counts
for i = 3:2:length(seq)
    thisB = (strfind([elements{:}],seq(i:i+1))+1)/2;
    thisA = (strfind([elements{:}],seq(i-2:i-1))+1)/2;
    AB(thisA,thisB) = AB(thisA,thisB) + 1;
end;

% get A counts
freqs = frequ(seq,2);

for i = 1:length(elements)
    thisA = elements{i};    
    if isfield(freqs,thisA)
        tp(i,:) = AB(i,:) ./ freqs.(thisA);
    end;
end;

if nargout > 1, varargout{1} = AB; end;
