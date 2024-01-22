rodzic(zofia, marcin).
rodzic(andrzej, marcin).
rodzic(andrzej, kasia).
rodzic(marcin, ania).
rodzic(marcin, krzy�).
rodzic(krzy�, miko�aj).
kobieta(zofia).
kobieta(kasia).
kobieta(ania).
m�czyzna(andrzej).
m�czyzna(marcin).
m�czyzna(krzy�).
m�czyzna(miko�aj).
wolny(andrzej,rower).
wolny(krzy�, si�ownia).
wolny(miko�aj,bieganie).
wiek(andrzej,33).
wiek(krzy�,44).
wiek(miko�aj,22).



rodzina(adrian,grzegorz,monika,m,22).
rodzina(kacper,grzegorz,monika,m,18).
rodzina(karina,grzegorz,monika,k,25).
rodzina(grzegorz,adam,krysia,m,55).
rodzina(monika,wies�aw,w�adys�awa,k,55).
zatrudnienie(anna, nowak, zelmer, duza_firma, 2000).
zatrudnienie(marcin, kowalski, abc_company, srednia_firma, 3000).
zatrudnienie(kasia, witkowska, xyz_corp, mala_firma, 2500).
zatrudnienie(jan, kowalczyk, abc_company, duza_firma, 3500).
zatrudnienie(ewa, lewandowska, xyz_corp, mala_firma, 2800).







rodzenstwo(X,Y):-
	rodzina(X,Z,L,_,_),
	rodzina(Y,Z1,L1,_,_),
	L=L1,
	Z=Z1.

bracia(X,Y):-
	rodzenstwo(X,Y),
	rodzina(X,_,_,m,_),
	rodzina(Y,_,_,m,_).
siostry(X,Y):-
	rodzenstwo(X,Y),
	rodzina(X,_,_,k,_),
	rodzina(Y,_,_,k,_).




potomek(Y,X):-
	rodzic(X,Y).
matka(X,Y):-
	rodzic(X,Y),
	kobieta(X).
dziadkowie(X,Z):-
	rodzic(X,Y),
	rodzic(Y,Z).
siostra(X,Y):-
	rodzic(Z,X),
	rodzic(Z,Y),
	kobieta(X).

m�odszy(X,Y):-
	wiek(X,W1),
	wiek(Y,W2),
	W1<W2.
szczesliwy(X):-
rodzic(X,_).
dwoje_dzieci(X):-
	rodzic(X,Y),
	siostra(Y,_).
wnuk(Dziecko,Dziadek):-
	rodzic(Rodzic,Dziecko),
	rodzic(Dziadek,Rodzic).
ciotka(Ciotka,Bratanek):-
	rodzic(Rodzic,Bratanek),
	siostra(Ciotka,Rodzic).

zadowolona(X,Y):-
	zatrudnienie(X,Y,_,mala_firma,Zarobki),
	Zarobki>=2500.





