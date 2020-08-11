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

% 1::par(A,1);1::par(A,2);1::par(A,3);1::par(A,4) :- dom(A).

1::same(D1,D2);1::diff(D1,D2) :- dom(D1), dom(D2), D1<D2.



partition :- diff(D1,D2), diff(D2,D3), same(D1,D3), D1\=D2, D2\=D3.

query(same(_,_)).
query(diff(_,_)).
query(partition).