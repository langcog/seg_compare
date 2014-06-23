function graphTP(tpn,varargin)

% graph it all nicely
imagesc(tpn);
colormap('Bone');
title('Transitional probability plot, p(AB)/p(A)')

if nargin > 1
    elements = varargin{1};
    for i = 1:length(elements)
        for j = 1:length(elements)
            text(i-.25,j,[elements{i} '|' elements{j}]);
        end;
    end;
end;

xlabel('A');
ylabel('B');


