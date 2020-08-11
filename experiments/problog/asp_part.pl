dom(1..6).
partition(1..4).

1{ part(X,P) : dom(X),partition(P) } 1 .
part(1,1).

ordered(X,[O]).
ordered([X|Xs],[O,X|Os]) :- X>O, ordered(Xs, [X|Os]).
ordered([X|Xs],[O|Os]) :- X=<O, ordered(Xs, [O|Os]).

:- part(1,PA), part(2,PB), part(1,PC), part(2,PD), part(1,PE), part(2,PF), not ordered([PA,PB,PC,PD,PE,PF]) .
