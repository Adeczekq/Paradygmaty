/*
d�ugo��(kontener1, 20).
szeroko��(kontener1,30).
wysoko��(kontener1, 15).
d�ugo��(kontener2, 25).
szeroko��(kontener2,9).
wysoko��(kontener2, 10).

objetosc(X):-
    d�ugo��(X,A),
    szeroko��(X,B),
    wysoko��(X,C),
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




