global PRIMITIVES;
global MAX_GRAB_SIZE;
global all_WSunits;
global WORDS; 
global WS;

global INTERFERENCE;
global FORGETTING;
global EXCITATION;
global THRESHOLD;
global INITIAL_WT;
global EPSILON;

MAX_GRAB_SIZE = 4; % MCF set this so that it is high enough to succeed

all_WSunits = [];

chars = unique([sents{:}]);

clear PRIMITIVES

for i = 1:length(chars)
  
  PRIMITIVES{i} = chars(i);
end

% PRIMITIVES = ['b', 'B', 'd', 'D', 't', 'T', 'k', ...
%              'K', 'l', 'L', 'g', 'G', 'p', 'P', 'v','V',...
%              'z','Z','m','M','f','F','n','N','r','R','J'];   


WORDS = [{}];

% syls = 'bBdDtTkKlLgGpPvVzZMmFfNnRrJ';

INTERFERENCE = 0.005;
FORGETTING = 0.05;
EXCITATION = 0.5;
THRESHOLD = 0;
INITIAL_WT = 1.00;
EPSILON = 0.0000000001;


for i = 1:length(chars)
  eval(['WS.words.' chars(i) '= [{''' chars(i) '''}];']);
  eval(['WS.wts.' chars(i) '= [0];']);
end

% WS.words.b = [{'b'}];
% WS.words.B = [{'B'}];
% WS.words.d = [{'d'}];
% WS.words.D = [{'D'}];
% WS.words.t = [{'t'}];
% WS.words.T = [{'T'}];
% WS.words.k = [{'k'}];
% WS.words.K = [{'K'}];
% WS.words.l = [{'l'}];
% WS.words.L = [{'L'}];
% WS.words.g = [{'g'}];
% WS.words.G = [{'G'}];
% WS.words.p = [{'p'}];
% WS.words.P = [{'P'}];
% WS.words.v = [{'v'}];
% WS.words.V = [{'V'}];
% WS.words.z = [{'z'}];
% WS.words.Z = [{'Z'}];
% WS.words.m = [{'m'}];
% WS.words.M = [{'M'}];
% WS.words.f = [{'f'}];
% WS.words.F = [{'F'}];
% WS.words.n = [{'n'}];
% WS.words.N = [{'N'}];
% WS.words.r = [{'r'}];
% WS.words.R = [{'R'}];
% WS.words.J = [{'J'}];
% 
% 
% WS.wts.b = [0];
% WS.wts.B = [0];
% WS.wts.d = [0];
% WS.wts.D = [0];
% WS.wts.t = [0];
% WS.wts.T = [0];
% WS.wts.k = [0];
% WS.wts.K = [0];
% WS.wts.l = [0];
% WS.wts.L = [0];
% WS.wts.g = [0];
% WS.wts.G = [0];
% WS.wts.p = [0];
% WS.wts.P = [0];
% WS.wts.v = [0];
% WS.wts.V = [0];
% WS.wts.z = [0];
% WS.wts.Z = [0];
% WS.wts.m = [0];
% WS.wts.M = [0];
% WS.wts.f = [0];
% WS.wts.F = [0];
% WS.wts.n = [0];
% WS.wts.N = [0];
% WS.wts.r = [0];
% WS.wts.R = [0];
% WS.wts.J = [0];         
%          