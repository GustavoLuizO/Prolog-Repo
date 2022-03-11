pop(eua,335).
pop(india,1300).
pop(china,1400).
pop(brasil,214).

area(eua,8).
area(india,3).
area(china,10).
area(brasil,8).

dens(X,Y):- pop(X,P),area(X,A),Y is P/A.
