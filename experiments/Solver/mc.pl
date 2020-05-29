:- use_module(library(aproblog)).

:- use_semiring(
    sr_plus,   % addition (arity 3)
    sr_times,  % multiplication (arity 3)
    sr_zero,   % neutral element of addition (arity 1)
    sr_one,    % neutral element of multiplication (arity 1)
    sr_neg,    % negation of fact label (arity 2)
    true,      % requires solving disjoint sum problem?
    false).    % requires solving neutral sum problem?


sr_zero(0.0).
sr_one(1.0).
sr_plus(A, B, C) :- C is A + B.
sr_times(A, B, C) :- C is A * B.
sr_neg(A, B) :- B is 1.


dutch(d1).
dutch(d2).
dutch(d3).
dutch(d4).
french(f1).
french(f2).

query(dutch(_)).