% init (by ADN)
function SSNinit
clear;

% Name the paths. Store the path names in a struct variable, "thePath".
thePath.start =  pwd;
thePath.script = [thePath.start '/scripts/'];
thePath.list = [thePath.start '/lists/'];
thePath.stim = [thePath.start '/stim/'];
thePath.data = [thePath.start '/data/'];
thePath.core = [thePath.start '/core/'];
thePath.analysis = [thePath.start '/analysis/'];
% Add relevant paths. These paths are necessary for the experiment, but
% will not be saved permanently.
addpath(thePath.start);
addpath(thePath.script);
addpath(thePath.list);
addpath(thePath.stim);
addpath(thePath.data);
addpath(genpath((thePath.core)));
addpath(thePath.analysis);
