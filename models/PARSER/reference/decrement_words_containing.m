function a = decrement_words_containing(cell);
  global PRIMITIVES;
  global INTERFERENCE;
  global WS;
  
  no_of_primitives = length(PRIMITIVES);
  
  for i = 1:no_of_primitives
    letter = PRIMITIVES(i);
    wt_vec = eval([strcat('WS.wts.', letter)]); 
    unit_str = cell2mat(cell);
    if ne(letter, unit_str)
        if ~isempty(eval(strcat('WS.words.', letter)))
            positions_where_cell_occurs = strfind(eval(strcat('WS.words.', letter)), unit_str);
            % gives a matrix like this [[1], [4], []]  it is an array of cells.  In
            % each cell of this matrix is where the index of the spot where
            % unit_str BEGINS in the word.  If it isn't contained in the word you
            % get a null [] cell, but which is counted when you want to know the
            % length of the array of cells. This is needed to correctly build the
            % vector telling you how much to change the wts for the words in
            % MS.words.letter.  What is useful is that you can have 
            % [[1], [2 4],[]]  This tells you that the sub-chunk unit_str occurs
            % TWICE in the second word, beginning at positions 2 and 4.  Thus you
            % want greater interference here, TWICE as much.  So, you take the
            % length of each of these cells [1], [2,4] etc. to know know much you
            % have to decrease the weight of a given word, based on how many times
            % it contains the sub-chunk.
            % see note below 
            how_much_to_change = [];
            for i = 1:length(positions_where_cell_occurs)
              if isempty(cell2mat(positions_where_cell_occurs(i)))
                how_much_to_change = [how_much_to_change, 0];
              else
            % all of the cell2mat stuff is to get the sub-chunk from a cell to a str
                how_much_to_change = ... 
                   [how_much_to_change, ...
                    -1*INTERFERENCE*length(cell2mat(positions_where_cell_occurs(i)))];
              end;
            end;

            wt_vec = wt_vec + how_much_to_change;
            eval([strcat('WS.wts.', letter), '= wt_vec;']);
        end;
    end;
  end;
  return;
  
%You want to find all the words that have
%the "chosen cell" in them and decrement them.  This seems to be
%the reasonable way to do this.  By using:
%strfind([{'deccai'}, {'abgdec'}, {'foobar'}], 'dec')
% will return
% [1]    [4]     []
% in other words, 'dec' starts at position 1 in {'deccai'}, in
% position 4 in {'abgdec'} and nowhere in {'foobar'}