% 20.9.18
% the test part of sat.pl's generate and test, independent of representation
% previously called bn_check.pl

:- consult(basic_checking).

% check(+Multiset,+Quantifier,+Property)
% all
check([],all,_).
check([F|M],all,Prop) :-
    element_count(F,E,_),
    has_property(E,Prop),
    check(M,all,Prop).
% at least
check([F|M],atleast(K),Prop) :-
    element_count(F,E,N),
    K =< N,
    has_property(E,Prop).
check([F|M],atleast(K),Prop) :-
    element_count(F,E,N),
    K > N,
    has_property(E,Prop),
    KK is K-N,
    check(M,atleast(KK),Prop).
check([F|M],atleast(K),Prop) :-
    element_count(F,E,N),
    \+ has_property(E,Prop),
    check(M,atleast(K),Prop).
% at most
check([],atmost(K),_) :-
    K >= 0.
check([F|M],atmost(K),Prop) :-
    element_count(F,E,N),
    \+ has_property(E,Prop),
    check(M,atmost(K),Prop).
check([F|M],atmost(K),Prop) :-
    element_count(F,E,N),
    N =< K,
    has_property(E,Prop),
    KK is K-N,
    check(M,atmost(KK),Prop).
% exactly
check([],exactly(0),_).
check([F|M],exactly(K),Prop) :- 
    element_count(F,E,N),
    N =< K,
    has_property(E,Prop),
    KK is K-N,
    check(M,exactly(KK),Prop).
check([F|M],exactly(K),Prop) :- 
    element_count(F,E,N),
    \+ has_property(E,Prop),
    check(M,exactly(K),Prop).

% check alldiff constraint by collecting seen values
check_alldiff(MS,Class) :-
    ms_all_diff(MS,[],Class).
ms_all_diff([],_,_).
ms_all_diff([F|M],Acc,Class) :-
    element_count(F,E,N),
    N < 2,
    has_class_value(E,Class,V),
    \+ member(V,Acc),
    ms_all_diff(M,[V|Acc],Class).

% check allsame constraint by comparing to first seen value
check_allsame([F|M],Class) :-
    element_count(F,E,_),
    has_class_value(E,Class,V),
    ms_all_same(M,V).
ms_all_same([],_).
ms_all_same([F|M],V) :-
    element_count(F,E,_),
    has_property(E,V),
    ms_all_same(M,V).

