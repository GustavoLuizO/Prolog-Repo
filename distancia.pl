dist(a,d,23).
dist(a,b,25).
dist(d,f,30).
dist(c,d,14).
dist(b,c,19).
dist(b,e,32).
dist(e,f,26).
dist(c,f,28).

distancia(Ori,Des,K):-dist(Ori,Des,K).
distancia(Ori,Des,K):-dist(Ori,X,K1),distancia(X,Des,K2),K is K1+K2.
