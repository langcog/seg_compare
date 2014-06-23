function vec = syl2vec(syl)

syls = {'b','B','d','D','t','T','k','K','l','L','g', ...
  'G','p','P','v','V','z','Z','#'};

vec = ~cellfun('isempty',strfind(syls,syl))';

%vlBT
%lBT