% an attempt to do an SRN simulation of the SSN data in MATLAB
% mcf 4/21/08

clear all
load 2008_04_21_SRN_vecs.mat

conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};

tic
for expt = 1%:3
  for cond = 1%:length(conditions{expt})
    for subj = 1%:12
      % make the prediction be to guess the next element
      P = train_vec{expt}{cond}{subj}{1}(:,1:end-1);
      T = train_vec{expt}{cond}{subj}{1}(:,2:end);

      Pseq = con2seq(P);
      Tseq = con2seq(T);

      % init the net
      % list all the defaults so that we can leave out 'removeconstantrows'
      % which screws everything up by making every condition different from
      % the other
      net = newelm(Pseq,Tseq,80,{'tansig','purelin'},'trainlm','learngdm','mse',...
        {'fixunknowns','mapminmax'},{'mapminmax'});

      % no output
      net.trainParam.show = NaN;
      net.trainParam.epochs = 100;

      % we are using "adapt" rather than train, propagates error only one
      % timestep. need to check on this, though.
      net = adapt(net,Pseq,Tseq);
      
      fprintf('%d %d %d: ',expt,cond,subj);
  
      % loop through all the training sentences
      for sent = 1:length(train_vec{expt}{cond}{subj})
        fprintf('%d ',sent)
        P = train_vec{expt}{cond}{subj}{sent}(:,1:end-1);
        T = train_vec{expt}{cond}{subj}{sent}(:,2:end);

        Pseq = con2seq(P);
        Tseq = con2seq(T);

        net = adapt(net,Pseq,Tseq);
      end

      fprintf('testing!\n')
      
      % now loop through all the test sequences
      for test = 1:length(corr_vec{expt}{cond}{subj})        
        corr{expt}{cond}{subj}{test} = ...
          seq2con(sim(net,con2seq(corr_vec{expt}{cond}{subj}{test})));
        incorr{expt}{cond}{subj}{test} = ...
          seq2con(sim(net,con2seq(corr_vec{expt}{cond}{subj}{test})));
      end        
    end
  end
end

toc

%% now figure out what to do with the test

