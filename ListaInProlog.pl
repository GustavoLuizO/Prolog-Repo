/*atividade1*/
pertence(X,[X|_]).
pertence(X,[_|Y]):-pertence(X,Y).

/*atividade*/
insere(X,L,[X|L]).

/*atividade*/
converte([],[]).
converte([X|L1],[Y|L2]):-abs(X,Y),converte(L1,L2).

/*Atividade-UltimoElemento*/
ultimo(Elemento,[Elemento]).
ultimo(Elemento,[_|Cauda]):-ultimo(Elemento,Cauda).


/*concatenar*/
concatenar([],L,L).
concatenar([X|L1],L2,[X|L3]):-concatenar(L1,L2,L3).
