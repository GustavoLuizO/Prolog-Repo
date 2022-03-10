nasceu(ricardo,pelotas).
nasceu(gustavo,paris).
nasceu(marcos,pelotas).
nasceu(marcus,passo_fundo).
nasceu(fabricio,rio_de_janeiro).
nasceu(thiago,sao_paulo).
nasceu(elder,alfenas).

cidade(pelotas,rs).
cidade(paris,franca).
cidade(passo_fundo,rs).
cidade(rio_de_janeiro,rj).
cidade(sao_paulo,sp).
cidade(alfenas,mg).


gaucho(X):-nasceu(X,Y),cidade(Y,rs).
carioca(X):-nasceu(X,Y),cidade(Y,rj).
paulista(X):-nasceu(X,Y),cidade(Y,sp).
frances(X):-nasceu(X,Y),cidade(Y,franca).
mineiro(X):-nasceu(X,Y),cidade(Y,mg).
