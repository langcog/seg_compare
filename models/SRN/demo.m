
P = round(rand(1,8))

T = [0 (P(1:end-1)+P(2:end) == 2)]

net = newelm(P,T,5,{'tansig','logsig'});



Pseq = con2seq(P);
Tseq = con2seq(T);
net = train(net,Pseq,Tseq); 
Y = sim(net,Pseq);
z = seq2con(Y);
z{1,1};
diff1 = T - z{1,1};