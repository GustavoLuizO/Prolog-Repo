pais(brasil, 9, 212).
pais(china, 12, 1800).
pais(eua, 9, 300).
pais(india, 3, 450).
superior(A,P):-pais(P,Area,_),Area>=A.
populacao(H,P):-pais(P,_,Pop),Pop>=H.
