for i = 1:4
    numWords = 2^i -1 ;
    numSeqs = round(1000/(2^i -1));
    
    fprintf('numwords per seq: %d\t numseqs: %d\t product: %d\n',...
        numWords,numSeqs,numWords*numSeqs);
    
    subplot(2,2,i);
    %seqs = saffranUttBoundSeqs(numWords,numSeqs);
    seqs = swingTestUttBoundSeqs(numWords,numSeqs);
       
    plottp(seqs);
    title([num2str(numWords) ' words per utterance']);
end;