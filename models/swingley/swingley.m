function [score c_score i_score] = swingley(seqs,cor,inc,syls)

for i = 1:length(seqs)
  seqs{i} = seqs{i}(1:end-1);
end

%% first gather the summary statistics we need
[runis, runif] = makengrams(seqs,1);
[unis, unif] = sortby(runis,runif);
[rbis, rbif] = makengrams(seqs,2);
[bis, bif] = sortby(rbis,rbif);
[rtris, rtrif] = makengrams(seqs,3);
[tris, trif] = sortby(rtris,rtrif);
[rquads, rquadf] = makengrams(seqs,4);
[quads, quadf] = sortby(rquads,rquadf);

mis = getmis(seqs,syls);
bimis = getbimis(rbis,mis,syls);
bisbymis = sortby(rbis,bimis);

%% now get the clumps for each item and make lexicons
%fprintf('crit: ');

for c = 1:100
  crit = c/100;
%  fprintf('%2.2f ',crit);
  monosyls = getmonos(unis,crit);
  bisyls = getbis(bis,bisbymis,crit);
  trisyls = gettris(tris,bisbymis,crit);
  quadsyls = getquads(quads,bisbymis,crit);

  temp_lex = consol_lex(bisyls, monosyls);
  temp_lex = consol_lex(trisyls, temp_lex);
  s_lex{c} = consol_lex(quadsyls, temp_lex);
end

%fprintf('\n');

%% now go through target/distractor pairs and calc probs

% we define the score under the model as the threshold at which the word
% appears

for i = 1:length(cor)
  c_score(i) = findThreshold(s_lex,cor{i});
  i_score(i) = findThreshold(s_lex,inc{i});  
end

warning off
score = nanmean(c_score ./ (c_score + i_score));
warning on
