clear all
load ../model_materials.mat
conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};
num_reps = 10;

for expt = 1:3
  for cond = 1:length(conditions{expt})
    for sub = 1:12
      train = sents{expt}{cond}{sub};
    
      % run each one n times
      for rep = 1:num_reps
        tic;
        states(rep) = parser(train,3,1,.05,.005,.5,1);
        t = toc;
        fprintf('expt = %d, length = %d, run = %d, rep = %d, time = %2.1f\n',expt,cond,sub,rep,t);
      end
    
      state = consolStates(states);
    
      [parser_score{expt}(cond,sub) parser_corr{expt}(cond,sub) ...
        parser_incorr{expt}(cond,sub)] = ...
        evalState(state,corr{expt}{cond}{sub},incorr{expt}{cond}{sub});
      %fprintf('score = %d\n',score(cond,sub));
    end
    
    save 2009-6-28_parser_results.mat parser_score parser_corr parser_incorr
  end
end