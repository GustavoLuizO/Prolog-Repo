:-dynamic pos/2.
:-dynamic segura/1.
:-dynamic solte/1.
pos(robo,garagem).
pos(tv,sala).
segura(nada).

ande(LD):- retract(pos(robo,LO)),
           asserta(pos(robo,LD)),
            format('Anda de ~w ate a ~w',[LO,LD]),nl.



pegue(Obj):-pos(Obj,LD),
    ande(LD),
    retract(segura(_)),
    assertz(segura(Obj)),
    format('Pegue a ~w',[Obj]).

larga:-
    retract(segura(Obj)),
    assertz(solte(Obj)),
    assertz(segura(nada)),
    format('Solta a ~w',[Obj]).

