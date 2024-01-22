lot(a2324, warszawa, krakow, 1800, 1845, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, warszawa, rzeszow, 1850, 1930, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, warszawa, berlin, 1400, 1525, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, warszawa, monachium, 1420, 1600, day(0, 1, 1, 0, 1, 1, 1)).
lot(l324, warszawa, londyn, 1330, 1600, day(1, 1, 1, 1, 1, 1, 1)).
lot(a2324, krakow, warszawa, 700, 745, day(1, 1, 1, 1, 1, 1, 1)).
lot(lf224, rzeszow, warszawa, 850, 940, day(1, 1, 1, 1, 1, 1, 1)).
lot(m232, berlin, warszawa, 1600, 1725, day(1, 0, 1, 1, 0, 0, 1)).
lot(a231, monachium, warszawa, 1720, 1850, day(0, 1, 1, 0, 1, 1, 1)).
lot(l324, londyn, warszawa, 1720, 1940, day(1, 1, 1, 1, 1, 1, 1)).

wtorek():-
    lot(A,B,C,D,E,day(_,1,_,_,_,_,_)),
    write(A),
    write(' '),
    write(B),
    write(' '),
    write(C),
    write(' '),
    write(D),
    write(' '),
    write(E).

przelot():-
    lot(_,rzeszow,warszawa,Odlot,Przylot,_),
    write(Odlot),
    write(' '),
    write(Przylot).

trasa():-
    lot(a2324,Odlot,Przylot,_,_,_),
    write(Odlot),
    write(' '),
    write(Przylot).
zadanie4():-
    lot(_,berlin,warszawa,_,_,X),
    write(X).
warunek1():-
 lot(Nr,_,warszawa,Od,Do,_),
   Od>0800,
   Do<1000,
   write(Nr).

warunek2():-
     lot(Nr,_,warszawa,_,Do,_),
     Do>1800,
     write(Nr).

zadanie5():-
    warunek1();
    warunek2().


