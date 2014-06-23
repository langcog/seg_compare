% clear all
% load 2008_04_21_SRN_vecs.mat

%% now do SRN

P = train_vec{1}{8}{1}{1}(:,1:end-1);
T = train_vec{1}{8}{1}{1}(:,2:end);

Pseq = con2seq(P);
Tseq = con2seq(T);

net = newelm(Pseq,Tseq,80,{'tansig','purelin'},'trainlm','learngdm','mse',...
  {'fixunknowns','mapminmax'},{'mapminmax'});

net.trainParam.show = NaN;
net.trainParam.epochs = 100;

net = train(net,Pseq,Tseq);

%%
tic

for i = 1:length(train_vec{1}{8}{1})
  fprintf('%d ',i)
  P = train_vec{1}{8}{1}{i}(:,1:end-1);
  T = train_vec{1}{8}{1}{i}(:,2:end);

  Pseq = con2seq(P);
  Tseq = con2seq(T);

  net = train(net,Pseq,Tseq);
end

toc

%%

Pout = seq2con(sim(net,Pseq));

figure(1)
subplot(1,2,1)
imagesc(Pout{1});
subplot(1,2,2)
imagesc(T);
