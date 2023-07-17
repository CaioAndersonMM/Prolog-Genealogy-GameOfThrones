% Fatos
gerou(aegon, aenys_i).
gerou(aegon, maegor_i).
gerou(rhaenys, aenys_i).
gerou(visenya, maegor_i).

gerou(aegon, balerion).
gerou(maegor_i, balerion).


gerou(aenys_i, jaehaerys_i).
gerou(aenys_i, alysanne).

gerou(jaehaerys_i, alyssa).
gerou(jaehaerys_i, baelon).
gerou(alysanne, alyssa).
gerou(alysanne, baelon).


gerou(baelon, viserys_i).
gerou(baelon, daemon).
gerou(alyssa, viserys_i).
gerou(alyssa, daemon).


gerou(viserys_i, rhaenyra).
gerou(aemma, rhaenyra).


gerou(viserys_i, aegon_ii).
gerou(viserys_i, helaena).
gerou(viserys_i, aemond).
gerou(viserys_i, daeron).
gerou(alicent, aegon_ii).
gerou(alicent, helaena).
gerou(alicent, aemond).
gerou(alicent, daeron).
gerou(rhaenyra, jacaerys).
gerou(rhaenyra, lucerys).
gerou(rhaenyra, joffrey).

gerou(rhaenyra, aegon_iii).
gerou(rhaenyra, viserys_ii).
gerou(daemon, aegon_iii).
gerou(daemon, viserys_ii).


gerou(viserys_ii, aegon_iv).
gerou(viserys_ii, naerys).
gerou(viserys_ii, aemon).

gerou(aegon_iv, daeron_ii).

gerou(daeron_ii, aerys_i).
gerou(daeron_ii, maekar_i).

% gerou(maekar_i, aemon).
gerou(maekar_i, aegon_v).

gerou(aegon_v, jaehaerys_ii).

gerou(jaehaerys_ii, aerys_ii).

gerou(aerys_ii, rhaegar).
gerou(aerys_ii, viserys).
gerou(aerys_ii, daenerys).

gerou(daenerys, drogon).
gerou(daenerys, rhaegal).
gerou(daenerys, viserion).
masculino(aegon).
masculino(maegor_i).
masculino(aenys_i).
masculino(jaehaerys_i).
masculino(baelon).
masculino(viserys_i).
masculino(daemon).
masculino(aemond).
masculino(aegon_ii).
masculino(daeron).
masculino(aemond).
masculino(jacaerys).
masculino(lucerys).
masculino(joffrey).
masculino(aegon_iii).
masculino(viserys_ii).
masculino(aegon_iv).
masculino(naerys).
masculino(aemon).
masculino(daeron_ii).
masculino(aerys_i).
masculino(maekar_i).
masculino(aegon_v).
masculino(jaehaerys_ii).
masculino(aerys_ii).
masculino(rhaegar).
masculino(viserys).

feminino(rhaenys).
feminino(visenya).
feminino(alyssane).
feminino(alyssa).
feminino(rhaenyra).
feminino(aemma).
feminino(alicent).
feminino(helaena).
feminino(daenerys).

dragao(balerion).
dragao(drogon).
dragao(viserion).
dragao(rhaegal).

verde(alicent).
verde(helaena).
verde(aemond).
verde(aegon_ii).
verde(daeron).

preto(rhaenyra).
preto(rhaenys).
preto(daemon).
preto(jacaerys).
preto(joffrey).
preto(lucerys).
preto(aegon_iii).
preto(viserys_ii).

%Regras

pretos(X):- preto(X).
verdes(X):- verde(X).

filho(X,Y):- gerou(Y,X), masculino(X).
filhodragao(X,Y):- gerou(Y,X), dragao(X).

filha(X,Y):- gerou(Y,X), feminino(X).

pai(X,Y):- gerou(X,Y), masculino(X).
mae(X,Y):- gerou(X,Y), feminino(X).

irmao(X,Y):- gerou(Z,X), gerou(Z,Y), Y\==X.
irma(X,Y):- gerou(Z,X), gerou(Z,Y), X\==Y.


avô(X,Y):- gerou(X,Z), gerou(Z,Y), masculino(X).
avó(X,Y):- gerou(X,Z), gerou(Z,Y), feminino(X).

tio(X,Y):- irmao(Z,X), gerou(Z,Y), masculino(X).
tia(X,Y):- irmao(Z,X), gerou(Z,Y), feminino(X).

marido(X,Y):- gerou(X,Z), gerou(Y,Z), X\==Y.
esposa(X,Y):- gerou(X,Z), gerou(Y,Z), Y\==X.

