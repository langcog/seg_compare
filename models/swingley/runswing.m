% function runswing(seqs, tlex);
% 
% numseqs = 3;
% seqlens = 466;
% [seqs, tlex] = getseqs(numseqs,seqlens);
% % [seqs, tlex] = getseqswl3;

for i = 65:85
    disp(i);
    lex{i} = swingley(seqs,i/100);
end;

for i = 65:85
    slex(i) = length(lex{i});
    truepos(i) = numin(tlex,lex{i});
    falsepos(i) = length(lex{i}) - truepos(i);
    falseneg(i) = length(tlex) - truepos(i);
end;

precision = truepos ./ (truepos + falsepos);
recall = truepos ./ (truepos + falseneg);

axes('FontSize',20);
plot(1:85,precision,'b',1:85,recall,'k','LineWidth',4);
axis([65 85 0 1]);
legend('precision','recall');
xlabel('Percentile Cutoff');
ylabel('Percent Correct');
