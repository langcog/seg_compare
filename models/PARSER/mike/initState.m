function state = initState;

% state.units = {'b','B','d','D','t','T','k','K','l','L','g', ...
%   'G','p','P','v','V','z','Z','#'};
state.units = {'b','B','d','D','t','T','k','K','l','L','g', ...
  'G','p','P','v','V','z','Z',...
  'M','m','F','f','N','n','R','r','J','3','6','7','#'};

state.weights = ones(1,length(state.units));
 