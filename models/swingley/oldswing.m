clear all;

numseqs = 300;
seqlens = 3;
criterion = .73;

seqs = getseqs(numseqs,seqlens);

% seqs={'golabugolabu','golabupadoti','padotipadoti'};

[unis,unif] = makengrams(seqs,1);
[bis,bif] = makengrams(seqs,2);
[tris,trif] = makengrams(seqs,3);
[quads,quadf] = makengrams(seqs,4);

bimis = getmis(bis,bif,unis,unif,2);

monosyls = getmonos(unis,criterion);
bisyls = getbis(bis,bimis,criterion);
trisyls = gettris(tris,bis,bimis,criterion);
quadsyls = getquads(quads,bis,bimis,criterion);

lex = consol_lex(bisyls, monosyls);
lex = consol_lex(trisyls, lex);
lex = consol_lex(quadsyls, lex);

disp(lex);