progenitor(paiana.ananais).
progenitor(maejoa.joana).
progenitor(pailu,luiz).
progenitor(maelu,nome).
progenitor(nome,luciene).
progenitor(luiz,luciene).
progenitor(joana,joao).
progenitor(ananias,joao).
progenitor(joao,gustavo).
progenitor(joao,lilian).
progenitor(luciane,gustavo).
progenitor(luciane,lilian).

bisavo(X,Y):-progenitor(X,Y),progenitor(X,Y),progenitor(X,Y).

