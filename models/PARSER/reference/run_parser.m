% The overall idea is:  you have a long sequence of syllables:
% bfhjgafkaabgcaifkaabgfkadecabgfkaabgjgacaibfhfkajgabfhcaiabgbfhcaiabg
% which is made up of six words (bfh, jga, fka, abg, cai, putdec) repeated in
% random order, with no two words repeating, one right after the other. The
% program starts with primitives 'a', 'b', ... , 'o'.
% At each time step, it grabs 1, 2, or 3 "units" (C1, C2, and/or C3).  
% These units can either be a primitive, or some chunk that has already 
% been formed, made up of primitives/other_chunks.  It puts C1, C2, and/or
% C3 together to make a new chunk, which is put into working memory (WM).  
% Each time a chunk (or primitive) is chosen to form a new chunk, the 
% weights of its component parts are incremented by a small fixed value.  
% At the same time, the program checks all other chunks in WM to see which 
% of them contain C1, C2 or C3 (assuming the new chunk was formed by C1, C2
% and C3).  All weights of chunks in WM containing C1, C2, or C3 are
% decremented by a small amount.  
% Any chunks in WM whose wt falls below a set THRESHOLD are eliminted from
% WM.  Chunks to be chosen must be above INITIAL_WT to be chosen.
% When a new word is put into the WM, it is assigned a value = INITIAL_WT.  
% If it is found again, if it's weight is below INITIAL_WT it is incremented
% by INITIAL_WT; if it is already above INITIAL_WT, it is incremented by 
% a value = EXCITATION.
% There is fixed forgetting on every time step and interference.  For the
% explanation of interference, see the spread_interference.m file.

% The main data structures are WS.words.a, WS.words.b, etc. which contain
% all chunks (and the primitive) associated with the letters (a, b, c,
% etc.). There is a parallel structure WS.wts.a, WS.wts.b, etc. which
% contains the weights associated with each chunk in WS.words.a, etc.  WS
% is a global variable.


function [Orig_words, Words_found, All_words_wts] = ...
                 run_parser_fixed_seq(do_prev_run);
               
%                  run_parser_fixed_seq_v02(no_of_words_presented, do_prev_run)

global WS
global THRESHOLD
global INITIAL_WT

% this lets you run the program again with EXACTLY the same results.
if nargin == 1
% if nargin == 2
  seed_fid = fopen('seed.txt', 'r');
  seed = fscanf(seed_fid, '%f');
else
 seed = fix(1e6*sum(clock));
 seed_fid = fopen('seed.txt', 'w');
 fprintf(seed_fid, '%.0f', seed);
 fclose(seed_fid);
end;
 
randtx('state', seed);

set_parameters;
%orig_word_str = generate_word_str(no_of_words_presented);

fid = fopen('words_and_grabs.txt', 'r');
orig_word_str = str2mat(fgetl(fid));
len_orig_word_str = length(orig_word_str);
grab_str = fgetl(fid);
grab_str_mat = [];
fclose(fid);

dump_fid = fopen('dump.txt', 'w');

for i = 1:length(grab_str)
    grab_str_mat = [grab_str_mat, str2num(grab_str(i))];
end;

word_str = orig_word_str(1:end);  
T = 0.1;
cycle_no = 1;

dump_fid = fopen('dump.txt', 'w');

while ~isempty(word_str) && (cycle_no <= len_orig_word_str)
  
% go through all chunks everywhere and decrement their weights by 
% FORGETTING     
   everyone_forget();
   
% remove all chunks below THRESHOLD.  Also, make sure the primitives stay
% in the WS.  If they are elimintated, put them back with THRESHOLD.
   clean_WS();

   %no_of_units = ceil(MAX_GRAB_SIZE*randtx);    % grab 1, 2, or 3 sub-chunks...
   no_of_units = grab_str_mat(cycle_no);
   
   fprintf(dump_fid, 'Cycle no: %d \n', cycle_no);
   fprintf(dump_fid, 'Items grabbed: %d \n', no_of_units);
   fprintf(dump_fid, 'Items put in WS: ');
   
   new_unit = [];   % this will be a string
   new_unit_cell_mat = [];  % this is a matrix of cells composing a new unit
   
   for i=1:no_of_units
      start_letter = word_str(1);  %... the first starts with
      
% all_WSunits contains all chunks/primitives in WS that start with 
% start_letter.  wts is a vector of their corresponding wts.       
      [all_WSunits, wts] = find_words_in_WS(start_letter);

% We don't want ALL units (= chunks and primitives) in WS starting with 
% start_letter, just the ones that start with that letter AND 
% constitute the beginning of the str.  E.g., str = caibfhabg, we have
% start_letter = 'c'.  In WS.words.c we have 'c', 'ca' 'cbf' 'cha' and 'cai'.  
% We only want 'c', 'ca' and 'cai' because these three (and not 'cbf' and 
% 'cha') constitue the beginning of str = caibfhabg.  
% NOTE: all units in all_WSunits are CELLS and must be converted as
% necessary

      if ~isempty(all_WSunits)
         units_at_beg_of_WS = [];
         wts_at_beg_of_WS = [];
         no_of_all_WSunits = length(all_WSunits);
         for index = 1:no_of_all_WSunits
           if strncmp(cell2mat(all_WSunits(index)), ...
                      word_str, length(cell2mat(all_WSunits(index)))) == 1
             units_at_beg_of_WS = [units_at_beg_of_WS, all_WSunits(index)];
             wts_at_beg_of_WS = [wts_at_beg_of_WS, wts(index)];
           end;
         end;
  % Once you have the list of chunks in WS that start with start_letter 
  % and are constitute the beginning of the str, you pick the longest one for your
  % chunk.
         max_length = 0;
         unit_index = 1;
         start_letter_chosen = 0;
         units_above_threshold = [];
         for i = 1:length(units_at_beg_of_WS)
  % we prepare for the fact that we might have to chose the primitive.  If
  % we chose it "as a last resort" because all of the multi-primitive
  % chunks are below INITIAL_WT, then it can have any activation level.
           if length(cell2mat(units_at_beg_of_WS(i))) == 1
             start_letter_index = i;
             start_letter_wt = wts_at_beg_of_WS(i);
           end;
  % we find all multi-primitive chunks that have activation above
  % INITIAL_WT and are not a primitive.
           if wts_at_beg_of_WS(i) >= INITIAL_WT && ...
               length(cell2mat(units_at_beg_of_WS(i))) > 1
             units_above_threshold = [units_above_threshold, units_at_beg_of_WS(i)];
           end;
         end;
  % if there are some multi-primitive units above threshold, we select the
  % longest of them as the unit chosen for the current grab.
         if ~isempty(units_above_threshold)
             for j = 1:length(units_above_threshold)
               unit_len = length(cell2mat(units_above_threshold(j)));
               if unit_len >= max_length
                  max_length = unit_len;
                  chosen_unit_index = j;
               end;
             end;
             chosen_cell = units_above_threshold(chosen_unit_index);
         else
% if there are not multi-primitive units above INITIAL_WT, we pick the base
% primitive and indicate that we are going to use it in our new unit.
             chosen_cell = {start_letter};
             start_letter_chosen = 1;
         end;

% we need to create new_unit_cell_mat to keep track of all separate 
% multi-primitive units and primitives that make up the new unit 
        new_unit_cell_mat = [new_unit_cell_mat, chosen_cell];
        
% put_word_in_WS only takes strings.  Here it's a cell, has to be
% converted. 
        chosen_unit = cell2mat(chosen_cell);

% now we put the primitive or chunk into WS and increment activations
        put_word_in_WS(chosen_unit);
        
        fprintf(dump_fid, '%s ' , chosen_unit);
% need to use my_ge = my_greater_than_or_equal because of equivalence with
% floating point for ==.
        if (length(chosen_unit) > 1) || ...
           (start_letter_chosen == 1 && length(chosen_unit) == 1 && ...
             my_ge(start_letter_wt, INITIAL_WT))
          spread_interference(chosen_unit);  
        end;

 %modify the word_str to be what's left after removing the chosen chunk.
         word_str = word_str(length(chosen_unit)+1:end);
 
% here we add the new sub-chunk/primitive (C1, C2, C3) to form the new 
% chunk
         new_unit = [new_unit, chosen_unit];
         start_letter_index = 0;
      end;
   end; 
   
%here we put the new unit in WS.  The fcn checks if it is already there.
%If it is, increment it's wt by EXCITATION; if not, give it INITIAL_WT.
%We check that the new chunk does not just consist of one chunk or 
%primitive.  If this were the case, it would be given an activation boost
%twice.
     if length(new_unit_cell_mat) > 1 
      put_word_in_WS(new_unit);
     end;

%we clean WS again just so that when we print the results to a file, we
%won't have units indicated as slightly below THRESHOLD.
     clean_WS();
     
     fprintf(dump_fid, '\nChunk: %s\n', new_unit);
   
     
% This lists the original words composing the initial string, the words
% that have been found and all words with their corresponding weights
     [Orig_words, Words_found, All_words_wts] = show_results();

   txtCell = cellfun(@num2str, All_words_wts, 'UniformOutput', 0);
   for i=1:size(txtCell, 1)
     fprintf(dump_fid, '%s\t', txtCell{i,1:end-1}); % Print tabs after all but
     fprintf(dump_fid, '%s\n', txtCell{i, end}); % Print newline after last item
   end;

   fprintf(dump_fid, '\n\n');
   
   cycle_no = cycle_no + 1;
   if mod(cycle_no, 50) == 0
      cycle_no
   end;
   
end;

[Orig_words, Words_found, All_words_wts] = show_results();
cycle_no

fclose(dump_fid);

return;
