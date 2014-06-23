% make sequences
% makes a series of sequences of our language. 

function make_seq_sent(numTrain,word_order_mask,sent,sentPrior);

unstress_len = 200;
stress_len = 300; 
pause_len = 1000; % msec between sentences

% possible sounds in our language
sound_strings = {'b 100','A 200'; ...
                 'b 100','i 200'; ...
                 'b 100','u 200'; ...
                 'd 100','A 200'; ...
                 'd 100','i 200'; ...
                 'd 100','u 200'; ...
                 'k 100','A 200'; ...
                 'k 100','i 200'; ...
                 'k 100','u 200'; ...
                 'g 100','A 200'; ...
                 'g 100','i 200'; ...
                 'g 100','u 200'; ...
                 'l 100','A 200'; ...
                 'l 100','i 200'; ...                 
                 'l 100','u 200'; ...
                 't 100','A 200'; ...
                 't 100','i 200'; ...
                 't 100','u 200'; ...
% and here are the nine new intruders
                 'p 100','A 200'; ...
                 'p 100','i 200'; ...
                 'p 100','u 200'; ...
                 'z 100','A 200'; ...
                 'z 100','i 200'; ...
                 'z 100','u 200'; ...                 
                 'v 100','A 200'; ...
                 'v 100','i 200'; ...
                 'v 100','u 200'};

% set up the words of the language
             
wrds = [1 2 0 0; ...
    4 5 0 0; ...
    7 8 9 0; ...
    10 11 12 0; ...
    13 14 15 3; ...
    16 17 18 6];
specials = [19 20 0 0; ...
    21 22 23 0; ...
    24 25 26 27];
numwrds = 6;
maxwrdsize = 4;

wordlist(1) = 1;

pause_index = 0;

% set up the sequence of words, with no repetitions, adding pauses if
% necessary.

for a = 2:numTrain
    if pause_index < a, pause_index = pause_index + poissrnd(sentPrior+2); end;    
    wordlist(a) = randIntZ(1,numwrds); 
    if pause_index == a & (sent == 1 | sent == 3), wordlist(a) = -1; end;

    % make sure there are no repetitions
    while(wordlist(a) == wordlist(a-1))
        wordlist(a) = randIntZ(1,numwrds); 
    end;
end %for

%disp(wordlist);

% translate the word list into a sound list, instantiating pauses as pauses

c = 1;
for a = 1:numTrain
    for b = 1:maxwrdsize;   
        if wordlist(a) == -1
            sndlist(c) = -1;
            c = c + 1;
            break;
        else
            sndlist(c) = wrds(wordlist(a),b);
            if not(wrds(wordlist(a),b) == 0)
                c = c+1;
            end; % if
        end;        
    end; % for
end; % while           

% now open a phoneme file and write the actual sounds of the words to the
% phoneme file so they can be synthesized.

pho_file = 'wordseq.pho';
fid = fopen(pho_file,'w'); 

fprintf(fid,'; Num words = %g\n; Date: %s\n',numTrain,datestr(clock));

for i = 1:length(sndlist)-1

    if (sent == 1 | sent == 3) & sndlist(i) == -1
        fprintf(fid,'_ %u\n',pause_len);
    else
        curr = word_order_mask(sndlist(i));
        fprintf(fid,'%s\n%s\n',sound_strings{curr,1},sound_strings{curr,2});
    end;
end;

fclose(fid);

% finally, synthesize and play the resulting wav file.

!/Users/tedlab/Desktop/MBROLA/mbrola-darwin-ppc /Users/tedlab/Desktop/MBROLA/us3/us3 wordseq.pho seg.wav

wav = wavread('seg.wav');
sound(wav,17000); %normal is 16000


