%% use reference implementation of PARSER

clear all
load ../../model_materials.mat
conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};
num_reps = 2;
eps = .1;

%%
for e = 1:3
  for c = 1:length(conditions{e})
    for s = 1:12
      train = sents{e}{c}{s};
    
      % run each one n times
      for r = 1:num_reps
        tic;
        train = cellfun(@(x) x(x~='#'),train,'UniformOutput',0);
        [states(r).units states(r).probs] = run_parser_mike(train);
        t = toc;
        fprintf('expt = %d, length = %d, run = %d, rep = %d, time = %2.1f\n',e,c,s,r,t);
      end
    
      state{e}{c}{s} = consolStates(states);
    
      parser_score{e}(c,s) = evalState(state{e}{c}{s},corr{e}{c}{s},incorr{e}{c}{s},eps);
      fprintf('score = %d\n\n',parser_score{e}(c,s));
    end
    
    save 2010-01-24_parser_results_eps.mat parser_score state
  end
end

% we got to e2, c5, s12, so start again on e2, c6, s1

%%

subplot(1,3,1)
plot(conditions{1},mean(parser_score{1},2))
subplot(1,3,2)
plot(conditions{2},mean(parser_score{2},2))
subplot(1,3,3)
plot(conditions{3},mean(parser_score{3},2))
