:-dynamic estou/1.

estou(paulista).
ando(Destino):-
    retract(estou(Origem)),
    asserta(estou(Destino)),
    format('Ando da ~w at� a ~w',[Origem,Destino]).
