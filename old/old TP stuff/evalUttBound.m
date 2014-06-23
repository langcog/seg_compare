% evaluate uttbound

clear all;
load uttbound.mat;

len = [1 2 3 5 10 20];
lens = {len1, len2, len3, len5, len10, len20};

figure(1);
for i = 1:6
    subplot(3,2,i);
    [tp,elem] = celltp(lens{i});
    tp(tp == 0) = ones(size(tp(tp==0))) .* .01;
    td1(i) = (tp(18,15)*tp(15,16)) / (tp(15,16)*tp(16,2));
    td2(i) = tp(6,8) / tp(8,3);
    td3(i) = 1 / tp(1,13);
    graphTP(tp);
    title(['TP plot [p(AB)/p(A)], utterance length = ' num2str(len(i))]);
end;

% tupiro vs. pirobi
figure(2)
plot(len,td1,'x-',len,td2,'o:',len,td3,'+-.');
legend('target 1 vs distractor 1','target 2 vs. distractor 2','target 3 vs. distractor 3');
