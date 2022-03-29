:-dynamic posicao/2.
:-dynamic pegar/2.
:-dynamic vender/1.
:-dynamic produto/1.
posicao(vendedor,balcao).
posicao(camisaamarela,pratcamisas).
posicao(camisarosa,pratcamisas).
posicao(camisabebe,pratcamisas).
posicao(calcapreta,pratcalca).
posicao(calcaroxa,pratcalca).
posicao(cueca,pratcuecas).

produto(camisaamarela,10).
produto(camisarosa,14).
produto(camisabebe,10).
produto(calcapreta,10).
produto(calcaroxa,10).
produto(cueca,10).

pegar(nada,0).

ande(LD):- retract(posicao(vendedor,LO)),
           asserta(posicao(vendedor,LD)),
           format('Anda de ~w at� a ~w',[LO,LD]),nl.

pegarprod(Produto,Quant):-
                 retract(pegar(_,_)),
                 assertz(pegar(Produto,Quant)),
                 format('Pegou ~w',[Produto]),nl.




