% 20.9.18
% datastructure-dependent predicates, using multiset tuple notation

% import sampling from lists (select_weighted)
:- use_module(library(lists)).

% mapping an element to its multiset
singleton(E,[(1,E)]).

% mapping a list element to its value and number
element_count((N,E),E,N).

% multiset does not contain "other" value
no_none_of(MS) :-
    \+ member((_,none_of(_)),MS).

% multiset union: add first to second tuple by tuple
ms_union([],Ms,Ms).
ms_union([(N,E)|Ms],M,R) :-
    add_to_hist(M,N,E,Next),
    ms_union(Ms,Next,R).

% add_to_hist(+OldHist,+Count,+Element,-NewHist)
% NewHist is OldHist with Count copies of Element added
add_to_hist(H,0,_,H).
add_to_hist([],C,E,[(C,E)]) :- C>0.
add_to_hist([(K,E)|L],C,E,[(N,E)|L]) :-
	C > 0,
	N is K+C.
add_to_hist([(K,D)|L],C,E,[(K,D)|L2]) :-
	C > 0,
	D @< E,
	add_to_hist(L,C,E,L2).
add_to_hist([(K,D)|L],C,E,[(C,E),(K,D)|L]) :-
	C > 0,
	D @> E.

% (ordered) multiset difference 1st\2nd=3rd
% 2nd empty: copy rest 
ms_difference(S,[],S).
% same element, same count: drop and recurse
ms_difference([(N,E)|R],[(N,E)|S],T) :-
    ms_difference(R,S,T).
% same element, more in 1st: update count and recurse
ms_difference([(N,E)|R],[(M,E)|S],[(D,E)|T]) :-
    N > M,
    D is N-M,
    ms_difference(R,S,T).
% no deletions for current element in 1st: shift and recurse, keeping 2nd
ms_difference([(N,E)|R],[(M,F)|S],[(N,E)|T]) :-
    E @< F,
    ms_difference(R,[(M,F)|S],T).


%%% select uniform from multiset
select_uniform_ms(ID,MS,E,Rest) :-
    select_weighted(ID,MS,E,_),
    update_ms(MS,E,Rest).

% if non-frac>1, decrease
update_ms([(N,E)|M],E,[(NN,E)|M]) :-
    full_el(N,I),
    I > 1,
    NN is I-1.
% if single copy, drop
update_ms([(N,E)|M],E,M) :-
    N =:= 1.
% else, keep
update_ms([(N,E)|M],E,[(N,E)|M]) :-
    \+ full_el(N,I),
    \+ N=:=1.
% on different element, recurse
update_ms([(N,X)|M],E,[(N,X)|MM]) :-
    X \= E,
    update_ms(M,E,MM).

% get the integer version of N if appropriate
full_el(N,I) :-
    I is integer(N),
    I =:= N.


