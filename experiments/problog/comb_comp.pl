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

1::comp(A,1);1::comp(A,2);1::comp(A,3);1::comp(A,4) :- dom(A).

used(C) :- comp(A,C).

composition :- comp(1,PA), comp(2,PB), comp(3,PC), comp(4,PD), comp(5,PE), comp(6,PF), used(1), used(2), used(3), used(4).
multicomposition :- comp(1,PA), comp(2,PB), comp(3,PC), comp(4,PD), comp(5,PE), comp(6,PF), used(1), used(2), used(3), used(4), PA=<PB, PB=<PC, PC=<PD, PD=<PE, PE=<PF.

query(composition).
query(multicomposition).