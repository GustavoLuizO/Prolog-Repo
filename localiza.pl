localiza(alfenas,mg).
localiza(contagem,mg).
localiza(campos_gerais,mg).
localiza(sãopaulo,sp).
localiza(campinas,sp).
localiza(barcelona,catalunha).

localiza(mg,brasil).
localiza(rj,brasil).
localiza(sp,brasil).
localiza(catalunha,espanha).

localiza(brasil,americadosul).
localiza(espanha,europa).

reside(X,Y):-localiza(X,Y).
reside(X,Y):-localiza(X,Z),reside(Z,Y).


contem(X,Y):-localiza(Y,X).
contem(X,Y):-localiza(Z,X),contem(Z,Y).
