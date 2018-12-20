% 20.9.18
% datastructure-dependent predicates, using plain lists

% import sampling from lists (select_uniform, select_weighted)
:- use_module(library(lists)).

% mapping an element to its multiset
singleton(E,[E]).

% mapping a list element to its value and number
element_count(E,E,1).

% multiset does not contain "other" value
no_none_of(MS) :-
    \+ member(none_of(_),MS).

% multiset union on lists is just append
ms_union(A,B,C) :-
    append(A,B,C).

% multiset difference
ms_diff(L,[],L).
ms_diff(L,[A|R],Z) :-
    delete_one(L,A,N),
    ms_diff(N,R,Z).
delete_one([A|R],A,R).
delete_one([B|R],A,N) :-
    B \= A,
    delete_one(R,A,N).

%%% select uniform from distribution (in which case we return the distribution as rest, as not all input correctly uses draws with replacement)
select_uniform_ms(ID,MS,E,MS) :-
    MS = [(_,_)|_],
    select_weighted(ID,MS,E,_).  % library pred returns wrong kind of rest (unweighted list of unchosen elements)
%%% select uniform from list (using library predicate)
select_uniform_ms(ID,MS,E,Rest) :-
    MS \= [(_,_)|_],
    select_uniform(ID,MS,E,Rest).  


