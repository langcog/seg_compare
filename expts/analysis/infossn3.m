clear all
load expt3data.mat
lens = [3 4 5 6 9];

i = 1;
for c = .5

  i = i + 1;
end
plot(lens,means_expt3,lens,pc)



%%

% info model = how well you could guess if you could remember .5 bits in
% the ideal coding model and you had to guess the difference


info_model = .5 + (1 ./ (2.^(log2(lens)-.5)));
plot(lens{i},info_model,'r-','LineWidth',2)