masculino(joao).
masculino(jose).
masculino(jorge).

feminino(maria).
feminino(ana).
feminino(julia).
feminino(iris).


progenitor(maria,jose).
progenitor(joao,jose).
progenitor(joao,ana).
progenitor(jose,julia).
progenitor(jose,iris).
progenitor(iris,jorge).

pai(Y,Filho):-progenitor(Y,Filho),masculino(Y).
mae(Y,Filho):-progenitor(Y,Filho),feminino(Y).

filho(Y,X):-progenitor(X,Y),masculino(Y).
filha(Y,X):-progenitor(X,Y),feminino(Y).

av�(X,Z):-progenitor(X,Y),progenitor(Y,Z),masculino(X).
av�(X,Z):-progenitor(X,Y),progenitor(Y,Z),feminino(X).

