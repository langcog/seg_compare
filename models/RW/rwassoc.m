clear all

%% constants
conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]}; 
tokens = {[100 100 100 100 100 100 100 100],...
  [8 16.6 50 100 150 200],[200 150 120 100 66.7]};
names = {'len','token','vocab'};

syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ#';
n_syls = length(syls);


%% read in data

for expt = 1:3
  [sents{expt},corr{expt},incorr{expt}] = ...
    readInFiles(['../../expts/materials/expt' ...
    num2str(expt) '/'],conditions{expt},names{expt});
end

%% make transition matrix
% t by t+1
ps = ones([n_syls n_syls]);
ps = ps ./ repmat(sum(ps,2),1,n_syls);

%%

alpha = .05;

e = 1; c = 1;
for s = 1:length(sents{e}{c})
  sent = sents{e}{c}{s}'
  
  for i = 1:length(sent)-1
    td_err =     
    
  end
end
