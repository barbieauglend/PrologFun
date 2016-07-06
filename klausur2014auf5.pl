zip([],[],[]).
zip([A|As],[B|Bs],[(A,B)|Z]):-
  zip(As,Bs,Z).


even(Y):- 0 is mod(Y,2).
odd(Y):- 1 is mod(Y,2).

filter(_,[],[]).

filter(A,[Y|Ys],[Y|X]):-
  A = 'even' -> even(Y),
  filter(A,Ys,X).
filter(A,[Y|Ys],X):-
  A = 'even' ->
  filter(A,Ys,X).

filter(A,[Y|Ys],[Y|X]):-
  A = 'odd' -> odd(Y),
  filter(A,Ys,X).
filter(A,[Y|Ys],X):-
  A = 'odd' ->
  filter(A,Ys,X).
