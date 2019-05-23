% M146: You 're having dinner at a restaurant that serves 5 kinds of pasta: spaghetti, bow ties, fettuccine, ravioli, and macaroni, in 4 different flavors: tomato sauce, cheese sauce, meat sauce, and olive oil.  If you randomly pick your kind of pasta and flavor, what is the probability that you 'll end up with something other than tomato spaghetti? ## Solution= 19/20

group(1-13).
size(1-13, 5).

given(exactly(1, 1-13, ravioli)).
given(exactly(1, 1-13, fettuccine)).
given(exactly(1, 1-13, spaghetti)).
given(exactly(1, 1-13, tie)).
given(exactly(1, 1-13, macaroni)).
group(1-30).
size(1-30, 4).

given(exactly(1, 1-30, tomato)).
given(exactly(1, 1-30, meat)).
given(exactly(1, 1-30, oil)).
given(exactly(1, 1-30, cheese)).

take_wr(1-13, 2-4-0, 1).
take_wr(1-30, 2-4-1, 1).
union(2-4, [2-4-0,2-4-1]).


probability(or(none(2-4, spaghetti), none(2-4, tomato))).

property(outcome(1), [tomato, cheese, oil, meat]).
property(outcome(0), [tie, macaroni, spaghetti, ravioli, fettuccine]).

