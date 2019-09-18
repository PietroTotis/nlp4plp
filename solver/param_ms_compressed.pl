:- consult(multiset_histogram).
:- consult(get_roots).

root(N,V) :-
    setup_ms_compressed(N,V).

