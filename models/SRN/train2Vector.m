clear all
load ../TP/2008_04_21_model_materials.mat
conditions = {[1 2 3 4 6 8 12 24],[48 100 300 600 900 1200],[3 4 5 6 9]};

syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ#';

%% convert all training stuff
for expt = 1:3
  for cond = 1:length(conditions{expt})
    cond
    for sub = 1:12
      for sent_num = 1:length(sents{expt}{cond}{sub})
        sent = sents{expt}{cond}{sub}{sent_num};      
        train_vec{expt}{cond}{sub}{sent_num} = zeros(length(syls),length(sent));
      
        for i = 1:length(sent)
          this_element = strfind(syls,sent(i));
          train_vec{expt}{cond}{sub}{sent_num}(this_element,i) = 1;
        end;
      end
    end
  end
end
    
%% convert the test materials

for expt = 1:3
  for cond = 1:length(conditions{expt})
    for sub = 1:12
      for item_num = 1:length(corr{expt}{cond}{sub})
        corr_item = [corr{expt}{cond}{sub}{item_num} '#'];
        incorr_item = [incorr{expt}{cond}{sub}{item_num} '#']; 
    
        corr_vec{expt}{cond}{sub}{item_num} = zeros(length(syls),length(corr_item));
        for i = 1:length(corr_item)
          this_element = strfind(syls,corr_item(i));
          corr_vec{expt}{cond}{sub}{item_num}(this_element,i) = 1;
        end
      
        incorr_vec{expt}{cond}{sub}{item_num} = zeros(length(syls),length(incorr_item));
        for i = 1:length(incorr_item)
          this_element = strfind(syls,incorr_item(i));
          incorr_vec{expt}{cond}{sub}{item_num}(this_element,i) = 1;
        end
      end
    end
  end
end

%% 

save 2008_04_21_SRN_vecs.mat train_vec corr_vec incorr_vec
