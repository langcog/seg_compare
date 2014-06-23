figure(1)
clf 

T = '5'; %temperature
parms=strcat('_b20_m50_T',T,'.dat');

dir='type_mem_prop/';
legend = {'5','7','10','15','20','25','none'};

results = load(strcat(dir,'length',parms));
x = [1,2,3,4,6,8,12,24];
subplot(6,2,1);
plot_seven_single(results,x,[0,24],'Utterance length (words)',legend);
title(strcat('Type-limited (proportional), temp = ',T),'FontWeight','bold','FontSize',12);

results = load(strcat(dir,'tokens',parms));
x = [48,100,300,600,900,1200];
subplot(6,2,3);
plot_seven_single(results,x,[0,1200],'Training size (tokens)',legend);

results = load(strcat(dir,'vocab',parms));
x = [3,4,5,6,9];
subplot(6,2,5);
plot_seven_single(results,x,[1,9],'Vocabulary size (types)',legend);


dir='type_mem_unif/';
legend = {'5','7','10','15','20','25','none'};

results = load(strcat(dir,'length',parms));
x = [1,2,3,4,6,8,12,24];
subplot(6,2,2);
plot_seven_single(results,x,[0,24],'Utterance length (words)',legend);
title(strcat('Type-limited (uniform), temp = ',T),'FontWeight','bold','FontSize',12);

results = load(strcat(dir,'tokens',parms));
x = [48,100,300,600,900,1200];
subplot(6,2,4);
plot_seven_single(results,x,[0,1200],'Training size (tokens)',legend);

results = load(strcat(dir,'vocab',parms));
x = [3,4,5,6,9];
subplot(6,2,6);
plot_seven_single(results,x,[1,9],'Vocabulary size (types)',legend);


dir='tok_mem_unif/';
legend = {'10','15','20','25','30','60','none'};

results = load(strcat(dir,'length',parms));
x = [1,2,3,4,6,8,12,24];
subplot(6,2,7);
plot_seven_single(results,x,[0,24],'Utterance length (words)',legend);
title(strcat('Token-limited (uniform), temp = ',T),'FontWeight','bold','FontSize',12);

results = load(strcat(dir,'tokens',parms));
x = [48,100,300,600,900,1200];
subplot(6,2,9);
plot_seven_single(results,x,[0,1200],'Training size (tokens)',legend);

results = load(strcat(dir,'vocab',parms));
x = [3,4,5,6,9];
subplot(6,2,11);
plot_seven_single(results,x,[1,9],'Vocabulary size (types)',legend);


dir='forget_rate/';
legend = {'2','3','4','5','6','8','none'};

results = load(strcat(dir,'length',parms));
x = [1,2,3,4,6,8,12,24];
subplot(6,2,8);
plot_seven_single(results,x,[0,24],'Utterance length (words)',legend);
title(strcat('Utterance-limited (uniform), temp = ',T),'FontWeight','bold','FontSize',12);

results = load(strcat(dir,'tokens',parms));
x = [48,100,300,600,900,1200];
subplot(6,2,10);
plot_seven_single(results,x,[0,1200],'Training size (tokens)',legend);

results = load(strcat(dir,'vocab',parms));
x = [3,4,5,6,9];
subplot(6,2,12);
plot_seven_single(results,x,[1,9],'Vocabulary size (types)',legend);
