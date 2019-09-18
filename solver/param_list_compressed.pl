:- consult(multiset_list).
:- consult(get_roots).

root(N,V) :-
    root_ms_compressed(N,V).

