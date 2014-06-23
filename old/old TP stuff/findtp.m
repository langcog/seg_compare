function tp = findtp(seqs);

tp = zeros(37,37);

for i = 1:length(seqs)
    seq = seqs{i};
    
    for j = 1:length(seq)+1
        if j == 1
            tp(geti(seq(j)),37) = tp(geti(seq(j)),37) + 1;
        elseif j == length(seq) + 1
            tp(37,geti(seq(j-1))) = tp(37,geti(seq(j-1))) + 1;
        else
            tp(geti(seq(j)),geti(seq(j-1))) = tp(geti(seq(j)),geti(seq(j-1))) + 1;
        end;
    end;
end;