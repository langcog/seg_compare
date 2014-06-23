function a = printcell(mixedCell, outfile_name)
% mixedCell = {1, 'abc', 3; 'd', 5, 7};
txtCell = cellfun(@num2str, mixedCell, 'UniformOutput', 0);
fid = fopen(outfile_name, 'w');
for i=1:size(txtCell, 1)
  fprintf(fid, '%s\t', txtCell{i,1:end-1}); % Print tabs after all but
%last item
  fprintf(fid, '%s\n', txtCell{i, end}); % Print newline after last item
end
fclose(fid); 
return