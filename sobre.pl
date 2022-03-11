sobre(b,a).
sobre(d,b).
sobre(d,c).
sobre(c,mesa).
sobre(a,mesa).

acima(X,Y):-sobre(X,Y).
acima(X,Y):-sobre(X,Z),acima(Z,Y).
