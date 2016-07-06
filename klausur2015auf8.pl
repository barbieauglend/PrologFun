sigma(A,A,A).
sigma(A,B,N) :-
        B > A,
        Ax is A+1,
        sigma(Ax,B,Nx),
        N is A+Nx.
milk.
kakaopulver.
tasse.
loefel.
kakao :- milk, kakaopulver, tasse, loefel.
