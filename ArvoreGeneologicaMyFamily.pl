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


bisavo(X,Y):-progenitor(X,Z),progenitor(Z,A),progenitor(A,Y).

