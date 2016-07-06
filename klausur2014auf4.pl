prog([],_,[]):-!.
prog([X|T],L,P) :-
  member(X,L), !,
  P = [X|R],
  prog(T,L,R).
prog([_|T],L,R) :-
  prog(T,L,R).
