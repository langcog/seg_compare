function [sents,corr,incorr] = readInFiles(path,conds,name,varargin)

% iterate over conditions
for cond = 1:length(conds)
  % determine the variables
  if strcmp(name,'vocab') | strcmp(name,'expt')
    vocab_size = conds(cond);
  else
    vocab_size = 6;
  end
  
  if nargin < 4, 
    perc = 1;
  else
    perc = varargin{2};
  end
    
  if strcmp(name,'len')
    num_sents = ceil((600/conds(cond)) * perc);
  elseif strcmp(name,'token')
    num_sents = ceil((conds(cond)/4) * perc);
  else
    num_sents = ceil((600/4) * perc);
  end
    
  fprintf('reading in files, cond=%d\n',conds(cond));
  
  % now read everything in
  for sub = 1:12
    %disp([path name num2str(conds(cond)) 'file' num2str(sub) '.txt'])

    disp([path name num2str(conds(cond),'%01.0f') 'file' ...
        num2str(sub,'%02.0f') varargin{1} '.txt'])
      
    if strcmp(name,'len')
      fid = fopen([path name num2str(conds(cond),'%02.0f') 'file' ...
        num2str(sub,'%02.0f') varargin{1} '.txt']);
    elseif strcmp(name,'token')
      fid = fopen([path name num2str(conds(cond),'%04.0f') 'file' ...
        num2str(sub,'%02.0f') varargin{1} '.txt']);
    else
      fid = fopen([path name num2str(conds(cond),'%01.0f') 'file' ...
        num2str(sub,'%02.0f') varargin{1} '.txt']);
    end
    
    fscanf(fid,'Lexicon:\t',1);
    
    for i = 1:vocab_size
      lex{cond}{sub}{i} = fscanf(fid,'%s\t',1); 
    end
        
    fgets(fid); %fgets(fid);   
    
    warning off
    for i = 1:num_sents
      sents{cond}{sub}{i} = ['#' fgetl(fid) '#'];
    end
    warning on
    
    fgets(fid); fgets(fid);
    
    for i = 1:30
      corr{cond}{sub}{i} = fscanf(fid,'%s\t',1);
      incorr{cond}{sub}{i} = fscanf(fid,'%s\n',1);
    end
  end
end