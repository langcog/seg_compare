function [rnd_words, rnd_grabsizes] = generate_words_grabs(no_of_words, no_of_grabs)

global MAX_GRAB_SIZE;
fid = fopen('words_and_grabs.txt', 'w');

rnd_words = generate_word_str(no_of_words);
fprintf(fid, '%c ', rnd_words);
fprintf(fid, '\n');

rnd_grabsizes = [];
for i = 1:no_of_grabs
  grabsize = ceil(rand*MAX_GRAB_SIZE);
  rnd_grabsizes = [rnd_grabsizes, grabsize];
end;

fprintf(fid, '%d ', rnd_grabsizes);
fprintf(fid, '\n');

fclose(fid);

return;

