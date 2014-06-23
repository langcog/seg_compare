train = sents{8}{1};

% maxUnits, shapingThreshold, forgetRate, interfereRate, reactivationGain
% beginWeight

i = 1;
for maxUnits = 2:6
  j = 1;
  for forgetRate = [.01 .025 .05 .1 .2]
    k = 1;
    for interfereRate = [.005 .05 .1]
      tic;
      state = parser(train,maxUnits,1,forgetRate,interfereRate,.5,1); 
      score(i,j,k) ...
        = evalState(state,corr{8}{1},incorr{8}{1});
      t = toc;
      fprintf('maxUnits = %d, forgetRate = %d, interfereRate = %d, time = %2.1f, score = %d\n',...
        maxUnits,forgetRate,interfereRate,t,score(i,j,k));
      k = k + 1;
    end
    j = j + 1;
  end
  i = i + 1;
end
