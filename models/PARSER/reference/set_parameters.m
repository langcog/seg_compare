
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

% a = bu  1
% b = pa  2
% c = ba  3
% d = du  4
% e = ta  5
% f = tu  6
% g = da  7
% h = bi  8
% i = pu  9
% j = pi  10
% k = ti  11
% l = ku  12
% m = do  13
% n = go  14
% o = la  15

MAX_GRAB_SIZE = 3;
% all_WSunits = [{'a'}, {'b'}, {'c'}, {'d'}, {'e'}, {'f'}, {'g'}, ...
%              {'h'}, {'i'}, {'j'}, {'k'}, {'l'}, {'m'}, {'n'}, {'o'}];        
all_WSunits = [];
PRIMITIVES = ['a', 'b', 'c', 'd', 'e', 'f', 'g', ...
             'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o'];   
WORDS = [{'abg'}, {'bfh'}, {'cai'}, {'dec'}, {'fka'}, {'jga'}];
%WORDS = [{'a'}, {'bf'}, {'cai'}, {'dec'}, {'fka'}, {'jga'}];

INTERFERENCE = 0.005;
FORGETTING = 0.05;
EXCITATION = 0.5;
THRESHOLD = 0;
INITIAL_WT = 1.00;
EPSILON = 0.0000000001;


WS.words.a = [{'a'}];
WS.words.b = [{'b'}];
WS.words.c = [{'c'}];
WS.words.d = [{'d'}];
WS.words.e = [{'e'}];
WS.words.f = [{'f'}];
WS.words.g = [{'g'}];
WS.words.h = [{'h'}];
WS.words.i = [{'i'}];
WS.words.j = [{'j'}];
WS.words.k = [{'k'}];
WS.words.l = [{'l'}];
WS.words.m = [{'m'}];
WS.words.n = [{'n'}];
WS.words.o = [{'o'}];

%  WS.words.a = [{}];
%  WS.words.b = [{}];
%  WS.words.c = [{}];
%  WS.words.d = [{}];
%  WS.words.e = [{}];
%  WS.words.f = [{}];
%  WS.words.g = [{}];
%  WS.words.h = [{}];
%  WS.words.i = [{}];
%  WS.words.j = [{}];
%  WS.words.k = [{}];
%  WS.words.l = [{}];
%  WS.words.m = [{}];
%  WS.words.n = [{}];
%  WS.words.o = [{}];

WS.wts.a = [0];
WS.wts.b = [0];
WS.wts.c = [0];
WS.wts.d = [0];
WS.wts.e = [0];
WS.wts.f = [0];
WS.wts.g = [0];
WS.wts.h = [0];
WS.wts.i = [0];
WS.wts.j = [0];
WS.wts.k = [0];
WS.wts.l = [0];
WS.wts.m = [0];
WS.wts.n = [0];
WS.wts.o = [0];

      
      
         
         