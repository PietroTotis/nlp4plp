% 19.9.18
% shared generate-and-test pattern
% adapted to match ijcai solver

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
% all: generate and test
sat(all(Set,Prop)) :-
    bn(Set,MS),
    check(MS,all,Prop).
% some = not none
sat(some(Set,Prop)) :-
    \+ sat(none(Set,Prop)).
% none = exactly 0
sat(none(Set,Prop)) :-
    sat(exactly(0,Set,Prop)).
% atleast 1 = some
sat(atleast(1,Set,Prop)) :-
    sat(some(Set,Prop)).
% atleast >1: generate and test    
sat(atleast(N,Set,Prop)) :-
    N > 1,
    bn(Set,MS),
    check(MS,atleast(N),Prop).
% atmost: generate and test
sat(atmost(N,Set,Prop)) :-
    bn(Set,MS),
    check(MS,atmost(N),Prop).
% exactly: generate and test
sat(exactly(N,Set,Prop)) :-
    bn(Set,MS),
    check(MS,exactly(N),Prop).
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
% alldiff: generate and test
sat(all_diff(Set,Class)) :-
    bn(Set,MS),
    check_alldiff(MS,Class).
% allsame: generate and test
sat(all_same(Set,Class)) :-
    bn(Set,MS),
    check_allsame(MS,Class).
% aggregates: generate and test
sat(aggcmp(Set,Class,Agg,Prop)) :-
    bn(Set,MS),
    check_agg(MS,Class,Agg,Prop).
sat(aggcmp(Set,Class,Agg,Op,Const)) :-
    bn(Set,MS),
    check_agg(MS,Class,Agg,Op,Const).
