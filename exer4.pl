second(X, [_,X|T]).

swap([A,B|T], [B,A|T]).

tran(eins,one).
tran(zwei,two).
tran(drei,three).
tran(vier,four).
tran(fuenf,five).
tran(sechs,six).
tran(sieben,seven).
tran(acht,eight).
tran(neun,nine).

listtran([],[]).
listtran([D|Ds],[E|Es]) :-
  tran(D,E),
  listtran(Ds,Es).

twice([],[]).
twice([A|As],[A,A|X]) :-
  twice(As,X).
