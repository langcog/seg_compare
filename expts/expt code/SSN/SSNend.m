function SSNend

thePath.start =  pwd;
thePath.script = [thePath.start '/scripts/'];
thePath.list = [thePath.start '/lists/'];
thePath.stim = [thePath.start '/stim/'];
thePath.data = [thePath.start '/data/'];
thePath.core = [thePath.start '/core/'];
thePath.analysis = [thePath.start '/analysis/'];
% Add relevant paths. These paths are necessary for the experiment, but
% will not be saved permanently.
rmpath(thePath.script);
rmpath(thePath.list);
rmpath(thePath.stim);
rmpath(thePath.data);
rmpath(thePath.core);
rmpath(thePath.analysis);
