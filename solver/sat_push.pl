%%% adapted version of sat using the same internal recursions as before, but now replacing generate and test with constraint pushing except for aggregates
% and: decompose and recurse
sat(and(A,B)) :-
    sat(A),
    sat(B).
% or: decompose and recurse
sat(or(A,B)) :-
    sat(A).
sat(or(A,B)) :-
    sat(B).
% not: test inner and negate
sat(not(A)) :-
    \+ sat(A).
% all: push constraint into generation
sat(all(Set,Prop)) :-
    bn(Set,all(Prop)).
% some = not none
sat(some(Set,Prop)) :-
    \+ sat(none(Set,Prop)).
% none = exactly 0
sat(none(Set,Prop)) :-
    sat(exactly(0,Set,Prop)).
% atleast 1 = some
sat(atleast(1,Set,Prop)) :-
    sat(some(Set,Prop)).
% atleast >1: push constraint into generation
sat(atleast(N,Set,Prop)) :-
    N > 1,
    bn(Set,atleast(N,Prop,0)).
% atmost: push constraint into generation
sat(atmost(N,Set,Prop)) :-
    bn(Set,atmost(N,Prop,0)).
% exactly: push constraint into generation
sat(exactly(N,Set,Prop)) :-
    bn(Set,exactly(N,Prop,0)).
% less than N = at most N-1
sat(less_than(N,Set,Prop)) :-
    NN is N-1,
    sat(atmost(NN,Set,Prop)).
% more than N = at least N+1
sat(more_than(N,Set,Prop)) :-
    NN is N+1,
    sat(atleast(NN,Set,Prop)).
% nth = all on the nth-singleton
sat(nth(N,Set,Prop)) :-
    sat(all(nth(N,Set),Prop)).
% alldiff: push constraint into generation
sat(all_diff(Set,Class)) :-
    bn(Set,alldiff(Class,[])).
% allsame: push constraint into generation
sat(all_same(Set,Class)) :-
    bn(Set,allsame(Class,_)).
% aggregates: generate and test
sat(aggcmp(Set,Class,Agg,Prop)) :-
    bn(Set,true,_,MS),
    check_agg(MS,Class,Agg,Prop).
sat(aggcmp(Set,Class,Agg,Op,Const)) :-
    bn(Set,true,_,MS),
    check_agg(MS,Class,Agg,Op,Const).
