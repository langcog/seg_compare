function synthesizeUtt(stim,info)

file = './stim/utt.pho';
fid = fopen(file,'w');

% translate into a .pho file from just a written string
for i = 1:length(stim)     
  if isVowel(stim(i)), len = info.vowellen; else len = info.conslen; ...
        end;
  fprintf(fid,'%s %s\n',stim(i),num2str(len));
end;    

fprintf(fid,'_ 50\n'); % to avoid pops/clicks

fclose(fid);

% synthesize the resulting wav file.
!./mbrola-darwin-ppc us3 ./stim/utt.pho ./stim/utt.wav
