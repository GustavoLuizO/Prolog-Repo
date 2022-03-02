feminino(maejoa).
feminino(joana).
feminino(maevo).
feminino(maedamae).
feminino(luciene).
feminino(lilian).

masculino(paiana).
masculino(ananias).
masculino(luiz).
masculino(paivo).
masculino(joao).
masculino(gustavo).

progenitor(paiana,ananias).
progenitor(maejoa,joana).
progenitor(paivo,luiz).
progenitor(maevo,maedamae).
progenitor(maedamae,luciene).
progenitor(luiz,luciene).
progenitor(joana,joao).
progenitor(ananias,joao).
progenitor(joao,gustavo).
progenitor(joao,lilian).
progenitor(luciane,gustavo).
progenitor(luciane,lilian).

bisavô(X,Z):-progenitor(X,Y),progenitor(Y,W),progenitor(W,Z),masculino(X).
bisavó(X,Z):-progenitor(X,Y),progenitor(Y,W),progenitor(W,Z),feminino(X).
