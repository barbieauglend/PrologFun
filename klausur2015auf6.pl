prog(L1,N,L2) :- prog(L1,N,L2,N).

prog([],_,[],_).
prog([_|Xs],N,Ys,0) :-
    prog(Xs,N,Ys,N).
prog([X|Xs],N,[X|Ys],K) :-
    K>0,
    K1 is K-1,
    prog([X|Xs],N,Ys,K1).
