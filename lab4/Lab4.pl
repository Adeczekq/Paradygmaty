pisz_list�([]).
pisz_list�([G�owa | Ogon]) :-
    write(G�owa),
    write(' '),
    pisz_list�(Ogon).

nale�y(E,[E|_]).
nale�y(E,[_|Ogon]):-
    nale�y(E,Ogon).

dlugosc(0,[]).
dlugosc(X,[_|Ogon]):-
    dlugosc(DlugoscOgona,Ogon),
    X is DlugoscOgona+1.



laczenie_list([], Lista, Lista).
laczenie_list([Element | Ogon1], Lista2, [Element | Wynik]) :-
    laczenie_list(Ogon1, Lista2, Wynik).

dodaj_element([], Element, [Element]).
dodaj_element([Glowa | Ogon], Element, [Glowa | NowyOgon]) :-
    dodaj_element(Ogon, Element, NowyOgon).


usu�_wszystkie(_, [], []).
usu�_wszystkie(X, [X|T], Result) :- usu�_wszystkie(X, T, Result).
usu�_wszystkie(X, [H|T], [H|Result]) :- X \= H, usu�_wszystkie(X, T, Result).

ostatni(E, [E]).
ostatni(E, [_|T]) :- ostatni(E, T).



