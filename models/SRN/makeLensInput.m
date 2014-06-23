conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};

for expt = 1:3
  for cond = 1:length(conditions{expt})
    cond
    for sub = 1:12
      % do training
      sents = train_vec{expt}{cond}{sub};
      fid = fopen(['~/Desktop/Lens/Work/' num2str(expt) 'cond' num2str(cond) ...
        'sub' num2str(sub) '.ex'],'w');
      for sent_num = 1:length(sents)-1
        sent = sents{sent_num};    
        fprintf(fid,'name: {%s}\n%d',num2str(sent_num),length(sent)-1);
        for char_num = 1:length(sent)-1
          fprintf(fid,'\ni: %d t: %d',sent(char_num)-1,sent(char_num+1)-1);
        end
        fprintf(fid,';\n');      
      end
      fclose(fid);

      % do corr test items
      sents = corr_vec{expt}{cond}{sub};
      fid = fopen(['~/Desktop/Lens/Work/' num2str(expt) 'cond' num2str(cond) ...
        'sub' num2str(sub) 'corr.ex'],'w');
      for sent_num = 1:length(sents)
        sent = sents{sent_num};    
        fprintf(fid,'name: {%s}\n%d',num2str(sent_num),length(sent)-1);
        for char_num = 1:length(sent)-1
          fprintf(fid,'\ni: %d t: %d',sent(char_num)-1,sent(char_num+1)-1);
        end
        fprintf(fid,';\n');      
      end
      fclose(fid);    

      % do incorr test items
      sents = incorr_vec{expt}{cond}{sub};
      fid = fopen(['~/Desktop/Lens/Work/' num2str(expt) 'cond' num2str(cond) ...
        'sub' num2str(sub) 'incorr.ex'],'w');
      for sent_num = 1:length(sents)
        sent = sents{sent_num};    
        fprintf(fid,'name: {%s}\n%d',num2str(sent_num),length(sent)-1);
        for char_num = 1:length(sent)-1
          fprintf(fid,'\ni: %d t: %d',sent(char_num)-1,sent(char_num+1)-1);
        end
        fprintf(fid,';\n');      
      end
      fclose(fid);     
    end
  end
end
