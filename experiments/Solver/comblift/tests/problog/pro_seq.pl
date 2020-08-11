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

% 1::x(1);1::x(2);1::x(3);1::x(4);1::x(5);1::x(6);1::x(7);1::x(8).
1::x(1);1::x(2);1::x(3);1::x(4);1::x(5).

1::y(1);1::y(2);1::y(3);1::y(4);1::y(5);1::y(6);1::y(7);1::y(8).

1::z(1);1::z(2);1::z(3);1::z(4);1::z(5);1::z(6);1::z(7);1::z(8).

% sequences :- sequences2(_,_,_).
% x(2) :- y(4), z(3).
% permutations :- x(X), y(Y), z(Z), X<Y, Y\=Z, X\=Z.
% sequences :- x(X), y(Y), z(Z).
% evidence(x(5), false) :- y(3).
sequences :- x(X), y(Y), X>Y, X>3.
sequences :- x(X), y(Y), X<2.
% \+sequences :- x(X), X>3.

query(sequences).
% query(permutations).