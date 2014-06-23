conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]}; % 4 5
tokens = {[100 100 100 100 100 100 100 100],...
  [8 16.6 50 100 150 200],[200 150 120 100 66.7]};
names = {'len','token','vocab'};
num_subs = 12;
lambda = 1;

syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ';

for expt = 1:3 % experiments
  fprintf('**** Experiment #%d ****\n',expt);
  [sents{expt},corr{expt},incorr{expt}] = ...
    readInFiles(['../../expts/materials/expt' ...
    num2str(expt) '/'],conditions{expt},names{expt});
end