% 21.9.18
% factoring out the part of checking needed for both the generate-and-test solvers and the early failure one

% compute aggregates, then check property or comparison
check_agg(MS,Class,Agg,Prop) :-
    no_none_of(MS), % can't aggregate those
    ms2class_val(MS,Class,Vs),
    agg(Vs,Agg,Value),
    prop_sat(Value,Prop).
check_agg(MS,Class,Agg,Op,Target) :-
    no_none_of(MS), % can't aggregate those
    ms2class_val(MS,Class,Vs),
    agg(Vs,Agg,Value),
    cmp_internal(Value,Op,Target).

% map elements on their values for the class of interest
ms2class_val([],_,[]).
ms2class_val([F|M],C,[FF|R]) :-
    element_count(F,E,N),
    has_class_value(E,C,V),
    element_count(FF,V,N),
    ms2class_val(M,C,R).

% compute aggregates
agg([F],sum,V) :-
    element_count(F,E,N),
    V is N*E.
agg([F|MS],sum,Res) :-
    element_count(F,E,N),
    agg(MS,sum,Acc),
    Res is Acc+N*E.
agg([F],product,V) :-
    element_count(F,E,N),
    V is E**N.
agg([F|MS],product,Res) :-
    element_count(F,E,N),
    agg(MS,product,Acc),
    Res is Acc*E**N.
agg([F],min,E) :-
    element_count(F,E,_).
agg([F|MS],min,Res) :-
    element_count(F,E,N),
    agg(MS,min,Acc),
    Res is min(Acc,E).
agg([F],max,E) :-
    element_count(F,E,_).
agg([F|MS],max,Res) :-
    element_count(F,E,_),
    agg(MS,max,Acc),
    Res is max(Acc,E).
agg(MS,average,Res) :-
    agg(MS,sum,Total),
    agg(MS,count,C),
    Res is Total/C.
agg([],count,0).
agg([F|M],count,Res) :-
    element_count(F,_,N),
    agg(M,count,A),
    Res is A+N.

% builtin properties supported for aggcmp/4
prop_sat(N,is_even) :-
    number(N),
    N mod 2 =:= 0.
prop_sat(N,is_odd) :-
    number(N),
    N mod 2 =:= 1.
prop_sat(N,is_prime) :-
    number(N),
    check_prime(N,2).

check_prime(N,N).
check_prime(N,D) :-
	D < N,
	N mod D > 0,
	DD is D+1,
	check_prime(N,DD).

% comparison operators supported for aggcmp/5
cmp_internal(Res,=:=,Val) :-
	Res =:= Val.
cmp_internal(Res,=\=,Val) :-
	Res =\= Val.
cmp_internal(Res,<,Val) :-
	Res < Val.
cmp_internal(Res,>,Val) :-
	Res > Val.
cmp_internal(Res,=<,Val) :-
	Res =< Val.
cmp_internal(Res,>=,Val) :-
	Res >= Val.    

% for given element and class, find the value the element has for that class
has_class_value(E,C,V) :-
    class_value(C,V),
    has_property(E,V).

% class values are either listed in the input or the "other" value none_of(listed)
class_value(C,V) :-
    property(C,L),
    member(V,L).
class_value(C,none_of(L)) :-
    property(C,L).

% element is either a single value, or a conjunction of values from different classes, or a disjunction of values from the same class(es)
% property is a value or Boolean combi of values or a builtin test
% el sats itself
has_property(E,E).
% el sats conj if el sats both parts (e.g., and(green,large))
has_property(E,and(L,R)) :-
    has_property(E,L),
    has_property(E,R).
% el sats disj if el sats some part (e.g., or(green,blue))
has_property(E,or(L,R)) :-
    has_property(E,L).
has_property(E,or(L,R)) :-
    has_property(E,R).
% el sats neg if el does not sat part
has_property(E,not(P)) :-
    \+ has_property(E,P).
% else, E is nested
has_property(E,P) :-
    E \= P,
    P \= and(_,_),
    P \= or(_,_),
    P \= not(_),
    has_p(E,P).
% el sats builtin test
has_property(E,Test) :-
    prop_sat(E,Test).
% el is an and over different classes: sat one side (e.g., and(male,over25))
has_p(and(L,R),P) :-
    has_property(L,P).
has_p(and(L,R),P) :-
    has_property(R,P).
% el is an or over different types: sat both sides (e.g., or(and(none_of([accident]),male),and(none_of([accident]),female)))
has_p(or(L,R),P) :-
    has_property(L,P),
    has_property(R,P).
