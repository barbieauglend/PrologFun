evs([],[]).

evs([Ys|_,Y],X) :- evs(Y,[Ys|X]).
