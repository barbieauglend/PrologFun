contains_duplicates([X|Xs]):-
  member(X,Xs);
  contains_duplicates(Xs).

member(X,[H|T]) :- X = H; member(X, T).


positive_numbers_only([],[]).
positive_numbers_only([A|B],[A|X]):-
  A>=0 -> positive_numbers_only(B,X).
positive_numbers_only([A|B],X):-
  A<0 -> positive_numbers_only(B,X).
