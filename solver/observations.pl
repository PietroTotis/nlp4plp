% testing an instance against observations: if there is no evidence, all tests succeed automatically, else, we need to go into the details
test_observations(Node,Set) :-
    \+ evid_exists.
test_observations(Node,Set) :-
    evid_exists,
    test_obs(Node,Set).

evid_exists :-
    observe(_).

% if there is evidence uniquely associated with Node, test all of it on Set
test_obs(Node,Set) :-
    evidence_for_filtering(Node),
    test_all_observations(Node,Set).
% otherwise, done
test_obs(Node,Set) :-
    \+ evidence_for_filtering(Node).
/*
% collect all useable constraints based on node name, then test them against instance
test_all_observations(Node,Set) :-
    all(X,evidence_for_filtering(Node,X),List),debugprint(list,List,Set),
    test_all(List,Set).

% usable constraints are Var-Call pairs, where Var is used in Call in the position of the instance,
% so unification passes the instance into the call without writing copies into the list first
test_all([],_).
test_all([Set-X|Xs],Set) :- debugprint(Set,X,Xs),
    call(X),
    test_all(Xs,Set).


evidence_for_filtering(Set) :-
    evidence_for_filtering(Set,Constraint).

evidence_for_filtering(Set,Constraint) :-
    observe(Obs),
    extract_constraint_for_filtering(Obs,Set,Constraint).

% decompose and-constraints into their parts, map basic constraints onto their checking-calls
% note we don't use or/not constraints, as they don't easily decompose on the node level
extract_constraint_for_filtering(and(Left,Right),Set,Constraint) :-
    extract_constraint_for_filtering(Left,Set,Constraint).
extract_constraint_for_filtering(and(Left,Right),Set,Constraint) :-
    extract_constraint_for_filtering(Right,Set,Constraint).
extract_constraint_for_filtering(all(Set,Prop),Set,MS-check(MS,all,Prop)).
extract_constraint_for_filtering(some(Set,Prop),Set,MS-check(MS,atleast(1),Prop)).
extract_constraint_for_filtering(none(Set,Prop),Set,MS-check(MS,exactly(0),Prop)).
extract_constraint_for_filtering(atleast(N,Set,Prop),Set,MS-check(MS,atleast(N),Prop)).
extract_constraint_for_filtering(atmost(N,Set,Prop),Set,MS-check(MS,atmost(N),Prop)).
extract_constraint_for_filtering(exactly(N,Set,Prop),Set,MS-check(MS,exactly(N),Prop)).
extract_constraint_for_filtering(less_than(N,Set,Prop),Set,MS-check(MS,atmost(NN),Prop)) :- NN is N-1.
extract_constraint_for_filtering(more_than(N,Set,Prop),Set,MS-check(MS,atleast(NN),Prop)) :- NN is N+1.
extract_constraint_for_filtering(nth(N,Set,Prop),nth(N,Set),MS-check(MS,all,Prop)).
extract_constraint_for_filtering(all_diff(Set,Class),Set,MS-check_alldiff(MS,Class)).
extract_constraint_for_filtering(all_same(Set,Class),Set,MS-check_allsame(MS,Class)).
extract_constraint_for_filtering(aggcmp(Set,Class,Agg,Prop),Set,MS-check_agg(MS,Class,Agg,Prop)).
extract_constraint_for_filtering(aggcmp(Set,Class,Agg,Op,Const),Set,MS-check_agg(MS,Class,Agg,Op,Const)).

*/

% collect all useable constraints based on node name, then test them against instance
test_all_observations(Node,Set) :-
    all(X,evidence_for_filtering(Node,Set,X),List),
    test_all(List).

% usable constraints are Var-Call pairs, where Var is used in Call in the position of the instance,
% so unification passes the instance into the call without writing copies into the list first
test_all([]).
test_all([X|Xs]) :- 
    call(X),
    test_all(Xs).


evidence_for_filtering(Set) :-
    evidence_for_filtering(Set,_,_).

evidence_for_filtering(Set,Inst,Constraint) :-
    observe(Obs),
    extract_constraint_for_filtering(Obs,Set,Inst,Constraint).

% decompose and-constraints into their parts, map basic constraints onto their checking-calls
% note we don't use or/not constraints, as they don't easily decompose on the node level
% we also cannot push some/atleast(1), as this is translated to \+ none when proving the evidence, and if used while proving for none leads to contradiction, thus failure, thus evidence trivially satisfied
extract_constraint_for_filtering(and(Left,Right),Set,MS,Constraint) :-
    extract_constraint_for_filtering(Left,Set,MS,Constraint).
extract_constraint_for_filtering(and(Left,Right),Set,MS,Constraint) :-
    extract_constraint_for_filtering(Right,Set,MS,Constraint).
extract_constraint_for_filtering(all(Set,Prop),Set,MS,check(MS,all,Prop)).
%extract_constraint_for_filtering(some(Set,Prop),Set,MS,check(MS,atleast(1),Prop)).
extract_constraint_for_filtering(none(Set,Prop),Set,MS,check(MS,exactly(0),Prop)).
extract_constraint_for_filtering(atleast(N,Set,Prop),Set,MS,check(MS,atleast(N),Prop)) :- N>1.
extract_constraint_for_filtering(atmost(N,Set,Prop),Set,MS,check(MS,atmost(N),Prop)).
extract_constraint_for_filtering(exactly(N,Set,Prop),Set,MS,check(MS,exactly(N),Prop)).
extract_constraint_for_filtering(less_than(N,Set,Prop),Set,MS,check(MS,atmost(NN),Prop)) :- NN is N-1.
extract_constraint_for_filtering(more_than(N,Set,Prop),Set,MS,check(MS,atleast(NN),Prop)) :- NN is N+1.
extract_constraint_for_filtering(nth(N,Set,Prop),nth(N,Set),MS,check(MS,all,Prop)).
extract_constraint_for_filtering(all_diff(Set,Class),Set,MS,check_alldiff(MS,Class)).
extract_constraint_for_filtering(all_same(Set,Class),Set,MS,check_allsame(MS,Class)).
extract_constraint_for_filtering(aggcmp(Set,Class,Agg,Prop),Set,MS,check_agg(MS,Class,Agg,Prop)).
extract_constraint_for_filtering(aggcmp(Set,Class,Agg,Op,Const),Set,MS,check_agg(MS,Class,Agg,Op,Const)).

