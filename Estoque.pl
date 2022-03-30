:-dynamic posicao/2.
:-dynamic pegar/2.
:-dynamic vender/1.
:-dynamic produto/2.
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
           format('Anda de ~w até a ~w',[LO,LD]),nl.

estocaprod(Produto,Quant):-
                 retract(produto(Produto,QuantA)),
                 X is QuantA + Quant,
                 assertz(produto(Produto,X)),
                 format('Vendendor estoca ~w itens de ~w',[Quant,Produto]),nl.

pegarprod(Produto,QuantRe):-
                 retract(pegar(_,_)),
                 assertz(pegar(Produto,QuantRe)),
                 retract(produto(Produto,Quant)),
                 X is Quant - QuantRe,
                 assertz(produto(Produto,X)),
                 format('Vendedor pega ~w itens de ~w',[QuantRe,Produto]),nl.
vende:-
    retract(pegar(Produto,Quant)),
    assertz(pegar(nada,0)),
    format('Vendeu ~w objetos de ~w',[Quant,Produto]).

carrega:- consult('estoqu.bd').

salva:-tell('estoque.bd'),
       listing(posicao),
       listing(pegar),
       listing(vender),
       listing(produto),
       told.






