%plot online alg w/ fully memory at various temps.
figure(1)
clf 


dir='type_mem_unif/'; %all dirs have same results for unlim mem.
parms='_b20_m50_T';
legend = {'1','2','3','4','5'};

results = [];
for T = [1:5] 
    data = load(strcat(dir,'length',parms,int2str(T),'.dat'));
    results = [results,data(:,size(data,2))]; %final column is unlim mem
end
x = [1,2,3,4,6,8,12,24];
subplot(3,1,1);
plot_five_single(results,x,[0,24],'Utterance length (words)',legend);
title('Unlimited memory, various temperatures','FontWeight','bold','FontSize',12);

results = [];
for T = [1:5] 
    data = load(strcat(dir,'tokens',parms,int2str(T),'.dat'));
    results = [results,data(:,size(data,2))]; %final column is unlim mem
end
x = [48,100,300,600,900,1200];
subplot(3,1,2);
plot_five_single(results,x,[0,1200],'Training size (tokens)',legend);

results = [];
for T = [1:5] 
    data = load(strcat(dir,'vocab',parms,int2str(T),'.dat'));
    results = [results,data(:,size(data,2))]; %final column is unlim mem
end
x = [3,4,5,6,9];
subplot(3,1,3);
plot_five_single(results,x,[1,9],'Vocabulary size (types)',legend);
