%% MOD MCF 6/29/09
% - now takes string input 
% - and iterates through a number of shorter strings
clear all
load ../mike/cogsci12_8type_32languages.mat
sents = sents{1}{3}{1};
sents = cellfun(@(x) x(2:end-1),sents,'UniformOutput',0);

sents = repmat(sents,1,20);
% function [words weights] = run_parser_mike(sents)           

%% INITIALIZATION

% MCF - I hate you, why did you use all global variables?!?
clear WS
clear THRESHOLD
clear INITIAL_WT

global WS
global THRESHOLD
global INITIAL_WT

seed = fix(1e6*sum(clock)); 
randtx('state', seed);

set_parameters_mike;

T = 0.1;
cycle_no = 1;

%% MAIN PARSER LOOP

for s = 1:length(sents)
  
  word_str = sents{s};
  len_orig_word_str = length(word_str);

%   s
  cycle_no = 1;
  while ~isempty(word_str) && (cycle_no <= len_orig_word_str)
%     word_str
%     WS
    
    % go through all chunks everywhere and decrement their weights by 
    % FORGETTING     
    everyone_forget();

    % remove all chunks below THRESHOLD.  Also, make sure the primitives stay
    % in the WS.  If they are elimintated, put them back with THRESHOLD.
    clean_WS();

    no_of_units = ceil(MAX_GRAB_SIZE*randtx);    % grab 1, 2, or 3 sub-chunks...
    no_of_units = min([no_of_units,length(word_str)]); % don't take more units than are in a sentence

    new_unit = [];   % this will be a string
    new_unit_cell_mat = [];  % this is a matrix of cells composing a new unit

    i = 1;
    while i <= no_of_units && ~isempty(word_str)
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
          end
        end

        % Once you have the list of chunks in WS that start with start_letter 
        % and are constitute the beginning of the str, you pick the longest
        % one for your chunk.

        max_length = 0;
        unit_index = 1;
        start_letter_chosen = 0;
        units_above_threshold = [];

        % we prepare for the fact that we might have to chose the primitive.  If
        % we chose it "as a last resort" because all of the multi-primitive
        % chunks are below INITIAL_WT, then it can have any activation level.
        for j = 1:length(units_at_beg_of_WS)

          if length(cell2mat(units_at_beg_of_WS(j))) == 1
            start_letter_index = j;
            start_letter_wt = wts_at_beg_of_WS(j);
          end;

          % we find all multi-primitive chunks that have activation above
          % INITIAL_WT and are not a primitive.
          if wts_at_beg_of_WS(j) >= INITIAL_WT && ...
              length(cell2mat(units_at_beg_of_WS(j))) > 1
            units_above_threshold = [units_above_threshold, units_at_beg_of_WS(j)];
          end
        end

        % if there are some multi-primitive units above threshold, we select the    
        % longest of them as the unit chosen for the current grab.
        if ~isempty(units_above_threshold)
          for j = 1:length(units_above_threshold)
            unit_len = length(cell2mat(units_above_threshold(j)));
            if unit_len >= max_length
              max_length = unit_len;
              chosen_unit_index = j;
            end
          end

          chosen_cell = units_above_threshold(chosen_unit_index);
        else
        % if there are not multi-primitive units above INITIAL_WT, we pick the base
        % primitive and indicate that we are going to use it in our new unit.
          chosen_cell = {start_letter};
          start_letter_chosen = 1;
        end

        % we need to create new_unit_cell_mat to keep track of all separate 
        % multi-primitive units and primitives that make up the new unit 
        new_unit_cell_mat = [new_unit_cell_mat, chosen_cell];

        % put_word_in_WS only takes strings.  Here it's a cell, has to be
        % converted. 
        chosen_unit = cell2mat(chosen_cell);

        % now we put the primitive or chunk into WS and increment activations
        put_word_in_WS(chosen_unit);

        % need to use my_ge = my_greater_than_or_equal because of equivalence with
        % floating point for ==.
        if (length(chosen_unit) > 1) || ...
           (start_letter_chosen == 1 && length(chosen_unit) == 1 && ...
           my_ge(start_letter_wt, INITIAL_WT))
          spread_interference(chosen_unit);  
        end

        % modify the word_str to be what's left after removing the chosen chunk.
        word_str = word_str(length(chosen_unit)+1:end);

        % here we add the new sub-chunk/primitive (C1, C2, C3) to form the new 
        % chunk
        new_unit = [new_unit, chosen_unit];
        start_letter_index = 0;
      end

      i = i + 1;
    end

    % here we put the new unit in WS.  The fcn checks if it is already there.
    % If it is, increment it's wt by EXCITATION; if not, give it INITIAL_WT.
    % We check that the new chunk does not just consist of one chunk or 
    % primitive.  If this were the case, it would be given an activation boost
    % twice.
    if length(new_unit_cell_mat) > 1 
      put_word_in_WS(new_unit);
    end

    cycle_no = cycle_no + 1;
  end
end

%% consolidate words out of idiotic data structure
f = fields(WS.words);
words = []; weights = [];

for i = 1:length(f)
  words = [words WS.words.(f{i})];
  weights = [weights WS.wts.(f{i})];
end
