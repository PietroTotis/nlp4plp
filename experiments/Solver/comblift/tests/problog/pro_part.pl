:- use_module(library(aproblog)).

:- use_semiring(
    sr_plus,   % addition (arity 3)
    sr_times,  % multiplication (arity 3)
    sr_zero,   % neutral element of addition
    sr_one,    % neutral element of multiplication
    sr_pos,
    sr_neg,    % negation of fact label
    sr_negate, 
    true,      % requires solving disjoint sum problem?
    true).    % requires solving neutral sum problem?

sr_zero(0.0).
sr_one(1.0).
sr_plus(A, B, C) :- C is A + B.
sr_times(A, B, C) :- C is A * B.

sr_pos(A, B, A).
sr_neg(A, B, 0).
sr_negate(A, 1.0).

1::dom(1).
1::dom(2).
1::dom(3).
1::dom(4).
1::dom(5).
1::dom(6).

1::par(A,1);1::par(A,2);1::par(A,3);1::par(A,4) :- dom(A).

ordered(_,[O]).
ordered([X|Xs],[O,X|Os]) :- X>O, ordered(Xs, [X|Os]).
ordered([X|Xs],[O|Os]) :- X=<O, ordered(Xs, [O|Os]).

partitions :- par(1,1), par(2,PB), par(3,PC), par(4,PD), par(5,PE), par(6,PF), ordered([1,PB,PC,PD,PE,PF],[1,2,3,4]).

query(partitions).