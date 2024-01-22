/*
d³ugoœæ(kontener1, 20).
szerokoœæ(kontener1,30).
wysokoœæ(kontener1, 15).
d³ugoœæ(kontener2, 25).
szerokoœæ(kontener2,9).
wysokoœæ(kontener2, 10).

objetosc(X):-
    d³ugoœæ(X,A),
    szerokoœæ(X,B),
    wysokoœæ(X,C),
    V is A*B*C,
    write(V).





nwd(X, Y, NWD) :-
    X =:= Y,
    NWD is X,
    write(NWD), nl.
nwd(X,Y,NWD):-
    X<Y,
    Z is Y-X, nwd(X,Z,NWD).
nwd(X,Y,NWD):-
    Y<X,
    Z is X-Y,
    nwd(Y,Z,NWD).
*/




