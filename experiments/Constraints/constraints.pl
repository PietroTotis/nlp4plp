:- use_module(library(clpfd)). 
:- use_module(library(lists)). 
:- debug.

group(nodes).
group(colours).
group(nums).
size(nodes, 5).
size(colours, 3).
size(nums, 3).

property(nodes,[a,b,c,d,e]).
% property(colours,[red,green,blue]).
property(nums,[0,1,2]).

% map(nodes, colours, coloured_graph).
map(nodes, nums, label_graph).

take(nodes, 4, subs).

rel(edge,a,b).
rel(edge,b,c).
rel(edge,c,a).
rel(edge,c,d).
rel(edge,b,e).

% given(coloured_graph, assign(b, green)).
% given(coloured_graph, not(assign(c, blue))).
% given(and(some([a,c,d], red), not(all([a,b,c],green)))).
% given(coloured_graph, all([a,b,c], red)).
% given(coloured_graph, alldiff).
% given(coloured_graph, alldiff([a,b,c])).
% given(coloured_graph, allsame([a,d,c])).
% given(coloured_graph, none(green)).
% given(coloured_graph, not(some(red))).
% given(coloured_graph, atmost(1, [b,c,d], red)).
% given(coloured_graph, and(alldiff([a,b,c]),assign(b,green))).
% given(coloured_graph, not(assign(c,red))).
% given(coloured_graph, or(assign(a,red),some(green))).
% given(coloured_graph, atleast(3,green)).
% given(coloured_graph, atmost(1,green)).
% given(coloured_graph, exactly(1,green)).
% given(label_graph, aggcmp(label_graph, sum, =:=, 5)).
% given(label_graph, aggcmp(label_graph, [a,b], sum, =:=, 3)).
% given(label_graph, aggcmp(label_graph, [a,d,b], sum, >, 3)).

% not working
% given(label_graph, aggcmp(label_graph, max, is_odd)).
% given(label_graph, aggcmp(label_graph, [b,c], product, is_odd)).
% given(label_graph, aggcmp(label_graph, [a,b,c], average, <, 2)).


%%%%%%%

given(_,_) :- fail.
rel(_,_,_) :- fail.
sequence(_,_,_) :- fail.
take(_,_,_) :- fail.
take_wr(_,_,_) :- fail.

group_given(Name) :- group(Name), !.
group_given(Name) :- map(_,_,Name).

size_given(Name, N) :- size(Name, N), !.
size_given(Name, N) :- map(_,_,Name), count(Name, N). 
size_given(Name, N) :- 
    property(Name, Props), 
    length(Props, N). 

all_numbers([]).
all_numbers([L|Ls]) :- number(L), all_numbers(Ls).

numbers2domain([L], L).
numbers2domain([L,M|Ls],'\\/'(L,Ds)) :- numbers2domain([M|Ls],Ds), !.

domain(Name, 1..L) :-
    property(Name, Labels),
    \+ all_numbers(Labels),
    length(Labels,L), !.
domain(Name, D) :-
    property(Name, Labels),
    all_numbers(Labels),
    numbers2domain(Labels, D).

prop2num(Name, Prop, N) :- 
    property(Name, Props),
    nth1(N, Props, Prop), !.
prop2num(Name, Prop, Prop) :-
    \+property(Name,_).

sol2prop(Name, [S], [P]) :- prop2num(Name, P, S), !.
sol2prop(Name,[S,T|Ss], [P,Q|Ps]) :- 
    prop2num(Name, P, S),
    sol2prop(Name, [T|Ss], [Q|Ps]). 

sols2props(Name, S, S) :- 
    property(Name, Labels),
    all_numbers(Labels), !.
sols2props(Name, [], []) :- 
    property(Name, Labels),
    \+ all_numbers(Labels).
sols2props(Name, [S|Ss], [P|Ps]) :- 
    property(Name, Labels),
    \+ all_numbers(Labels),
    sol2prop(Name, S, P),
    sols2props(Name, Ss, Ps).

neq(A,B) :- A #\= B.
eq(A,B) :- A #= B.
get_nth_var(Vars, N, Var) :- element(N, Vars, Var).

chain_and_eq(Val, [V], V #= Val).
chain_and_eq(Val, [V|Vs], V #= Val #/\ Cs) :-
    chain_and_eq(Val, Vs, Cs).

chain_or_eq(Val, [V], V #= Val).
chain_or_eq(Val, [V|Vs], V #= Val #\/ Cs) :-
    chain_or_eq(Val, Vs, Cs).

% chain_or_diff([V,W], V #\= W).
% chain_or_diff([V,W,Z|Vs], V #\= Z #\/ Cs) :-
%     chain_or_diff([W,Z|Vs], Cs).

chain_and_diff(Val, [V], V #\= Val).
chain_and_diff(Val, [V,W|Vs], V #\= Val #/\ Cs) :-
    chain_and_diff(Val, [W|Vs], Cs).

all_different([V,W], V #\= W).
all_different([V,W,Z|Vs], COne #/\ CAll) :- 
    chain_and_diff(V, [W,Z|Vs],COne), 
    all_different([W,Z|Vs],CAll).

chain_atleast(1, Val, Vars, C) :-
    chain_or_eq(Val, Vars, C), !.
chain_atleast(N, Val, [V|Vs],  C) :-
    length([V|Vs], N),
    chain_and_eq(Val, [V|Vs], C), !.
chain_atleast(N, Val, [V|Vs], V#\=Val #/\ CN #\/ V#=Val #/\ CM) :-
    length([V|Vs], L),
    N < L,
    chain_atleast(N, Val, Vs, CN),
    M is N -1,
    chain_atleast(M, Val, Vs, CM).

chain_atmost(0, Val, Vars, C) :-
    chain_and_diff(Val, Vars, C), !.
chain_atmost(1, Val, [V], V#=Val #\/ V#\=Val) :- !.
chain_atmost(N, Val, [V|Vs], V#=Val #\/ V#\=Val #/\ C) :-
    length([V|Vs], N),
    M is N-1,
    chain_atmost(M, Val, Vs, C), !.
chain_atmost(N, Val, [V|Vs], V#\=Val #/\ CN #\/ V#=Val #/\ CM) :-
    length([V|Vs], L),
    N < L,
    chain_atmost(N, Val, Vs, CN),
    M is N -1,
    chain_atmost(M, Val, Vs, CM).

%% Logic

unfold(Vars, Name,  and(L,R), LC #/\ RC) :- 
    unfold(Vars, Name, L, LC),
    unfold(Vars, Name, R, RC).

unfold(Vars, Name, not(E), #\ EC) :- 
    unfold(Vars, Name, E, EC).

unfold(Vars, Name, or(L,R), LC #\/ RC) :- 
    unfold(Vars, Name, L, LC),
    unfold(Vars, Name, R, RC).

unfold(Vars, _, allsame, C) :- c_allsame(Vars, C).
unfold(Vars, Name, allsame(Xs), C) :- 
    map(XName, _, Name),
    maplist(prop2num(XName), Xs, Inds),
    c_allsame(Vars, Inds, C).

unfold(Vars, _, alldiff, C) :- c_alldiff(Vars, C).
unfold(Vars, Name, alldiff(Xs), C) :- 
    map(XName, _, Name), 
    maplist(prop2num(XName), Xs, Inds),
    c_alldiff(Vars, Inds, C).


unfold(Vars, Name, aggcmp(_, [X|Xs], Op, Short), C) :-
    map(XName, _, Name), 
    maplist(prop2num(XName), [X|Xs], Inds),
    c_aggcmp(Vars, Inds, Op, Short, C).
    
unfold(Vars,  _, aggcmp(_, Op, Comp, Val), C) :-
    Op \= [_|_],
    c_aggcmp(Vars, Op, Comp, Val, C).
unfold(Vars, Name, aggcmp(_, Xs, Op, Comp, Val), C) :-
    map(XName, _, Name), 
    maplist(prop2num(XName), Xs, Inds),
    c_aggcmp(Vars, Inds, Op, Comp, Val, C).

unfold(Vars, _, aggcmp(_, Op, Short), C) :-
    c_aggcmp(Vars, Op, Short, C).
unfold(Vars, Name, aggcmp(_, Xs, Op, Short), C) :-
    map(XName, _, Name), 
    maplist(prop2num(XName), Xs, Inds),
    c_aggcmp(Vars, Inds, Op, Short, C).

unfold(Vars, Name, all(Y), C) :- 
    map(_, YName, Name),
    prop2num(YName, Y, YInd),
    c_all(Vars, YInd, C).
unfold(Vars, Name, all(Xs, Y), C) :- 
    map(XName, YName, Name),
    maplist(prop2num(XName), Xs, Inds),
    prop2num(YName, Y, YInd),
    c_all(Vars, Inds, YInd, C).

unfold(Vars, Name, none(Y), C) :- 
    map(_, YName, Name),
    prop2num(YName, Y, YInd),
    c_none(Vars, YInd, C).
unfold(Vars, Name, none(Xs, Y), C) :- 
    map(XName, YName, Name),
    maplist(prop2num(XName), Xs, Inds),
    prop2num(YName, Y, YInd),
    c_none(Vars, Inds, YInd, C).

unfold(Vars, Name, some(Y), C) :- 
    map(_, YName, Name),
    prop2num(YName, Y, YInd),
    c_some(Vars, YInd, C).
unfold(Vars, Name, some(Xs, Y), C) :- 
    map(XName, YName, Name),
    maplist(prop2num(XName), Xs, Inds),
    prop2num(YName, Y, YInd),
    c_some(Vars, Inds, YInd, C).

unfold(Vars, Name, atmost(N,Y), C) :- 
    map(_, YName, Name),
    prop2num(YName, Y, YInd),
    c_atmost(N, Vars, YInd, C).
unfold(Vars, Name, atmost(N, Xs, Y), C) :- 
    map(XName, YName, Name),
    maplist(prop2num(XName), Xs, Inds),
    prop2num(YName, Y, YInd),
    c_atmost(N, Vars, Inds, YInd, C).

unfold(Vars, Name, atleast(N, Y), C) :- 
    map(_, YName, Name),
    prop2num(YName, Y, YInd),
    c_atleast(N, Vars, YInd, C).
unfold(Vars, Name, atleast(N, Xs, Y), C) :- 
    map(XName, YName, Name),
    maplist(prop2num(XName), Xs, Inds),
    prop2num(YName, Y, YInd),
    c_atleast(N, Vars, Inds, YInd, C).

unfold(Vars, Name, exactly(N, Y), C) :- 
    map(_, YName, Name),
    prop2num(YName, Y, YInd),
    c_exactly(N, Vars, YInd, C).
unfold(Vars, Name, exactly(N, Xs, Y), C) :- 
    map(XName, YName, Name),
    maplist(prop2num(XName), Xs, Inds),
    prop2num(YName, Y, YInd),
    c_exactly(N, Vars, Inds, YInd, C).

unfold(Vars, Name, assign(X, Y), C) :- 
    map(XName, YName, Name),
    prop2num(XName, X, XInd),
    prop2num(YName, Y, YInd),
    c_assign(Vars, XInd, YInd, C).

%% Constraints

c_assign(Vs, XInd, YInd, Var #= YInd) :- 
    element(XInd,Vs,Var).

c_alldiff(Vs, C) :- all_different(Vs,C).
c_alldiff(Vs, Inds, C) :- 
    maplist(get_nth_var(Vs), Inds, Sel),
    all_different(Sel, C).

c_allsame([V|Vs], C):-
    chain_and_eq(V, Vs, C).
c_allsame(Vars, Inds, C) :- 
    maplist(get_nth_var(Vars), Inds, [V|Vs]),
    chain_and_eq(V, Vs, C).

c_all(Vs, Val, C) :-
    chain_and_eq(Val,Vs, C).
c_all(Vs, Inds, Val, C) :-
    maplist(get_nth_var(Vs), Inds, Sel),
    chain_and_eq(Val,Sel, C).

c_none(Vs, Val, C) :-
    chain_and_diff(Val,Vs, C).
c_none(Vs, Inds, Val, C) :-
    maplist(get_nth_var(Vs), Inds, Sel),
    chain_and_diff(Val, Sel, C).

c_some(Vs, Val, C) :- 
    chain_or_eq(Val,Vs, C).
c_some(Vs, Inds, Val, C) :-
    maplist(get_nth_var(Vs), Inds, Sel),
    chain_or_eq(Val, Sel, C).

c_atmost(N, Vs, Val, C) :-
    chain_atmost(N, Val,Vs, C).
c_atmost(N, Vs, Inds, Val, C) :-
    maplist(get_nth_var(Vs), Inds, Sel),
    chain_atmost(N, Val, Sel, C).

c_atleast(N, Vs, Val, C) :-
    chain_atleast(N, Val,Vs, C).
c_atleast(N, Vs, Inds, Val, C) :-
    maplist(get_nth_var(Vs), Inds, Sel),
    chain_atleast(N, Val, Sel, C).

c_exactly(N, Vs, Val, CL #/\CM) :-
    chain_atleast(N, Val, Vs, CL),
    chain_atmost(N, Val, Vs, CM).
c_exactly(N, Vs, Inds, Val, CL #/\CM) :-
    maplist(get_nth_var(Vs), Inds, Sel),
    chain_atleast(N, Val, Sel, CL),
    chain_atmost(N, Val, Sel, CM).

%% Aggcmp constraints

c_aggcmp(Vs, [I|Is], Op, Short, C) :- 
    maplist(get_nth_var(Vs), [I|Is], Sel),
    c_aggcmp(Sel, Op, Short, C).

c_aggcmp(Vs, sum, Comp, Val, C) :-
    sumlist(Vs, Sum),
    cmp_constraint(Sum, Comp, Val, C).
c_aggcmp(Vs, prod, Comp, Val, C) :-
    prodlist(Vs, Prod),
    cmp_constraint(Prod, Comp, Val, C).
c_aggcmp(Vs, min, Comp, Val, C) :-
    min_list(Vs, Min),
    cmp_constraint(Min, Comp, Val, C).
c_aggcmp(Vs, max, Comp, Val, C) :-
    max_list(Vs, Max),
    cmp_constraint(Max, Comp, Val, C).
c_aggcmp(Vs, average, Comp, Val, C) :-
    avglist(Vs, Avg),
    cmp_constraint(Avg, Comp, Val, C).

c_aggcmp(Vs, Inds, Op, Comp, Val, C) :- 
    maplist(get_nth_var(Vs), Inds, Sel),
    c_aggcmp(Sel, Op, Comp, Val, C).

c_aggcmp(Vs, sum, Short, C) :- 
    sumlist(Vs, Sum),
    cmp_short_constraint(Sum, Short, C).
c_aggcmp(Vs, prod, Short, C) :-
    prodlist(Vs, Prod),
    cmp_short_constraint(Prod, Short, C).
c_aggcmp(Vs, min, Short, C) :-
    minlist(Vs, Min),
    cmp_short_constraint(Min, Short, C).
c_aggcmp(Vs, max, Short, C) :-
    maxlist(Vs, Max),
    cmp_short_constraint(Max, Short, C).
c_aggcmp(Vs, average, Short, C) :-
    avglist(Vs, Avg),
    cmp_short_constraint(Avg, Short, C).


sumlist([V], V).
sumlist([V,W|Vs], S) :- sumlist([W|Vs], Ss), S #= V+Ss. 

prodlist([V], V).
prodlist([V,W|Vs], P) :- prodlist([W|Vs], Ps), P #= V*Ps. 

minlist([V], V).
minlist([V,W|Vs], V) :- minlist([W|Vs], Ms), V #< Ms.
minlist([V,W|Vs], Ms) :- minlist([W|Vs], Ms), Ms #< V.

maxlist([V], V).
maxlist([V,W|Vs], V) :- maxlist([W|Vs], Ms), V #> Ms.
maxlist([V,W|Vs], Ms) :- maxlist([W|Vs], Ms), Ms #> V.

avglist(Vars, Avg) :- sumlist(Vars, Sum), length(Vars,L), Avg #= Sum/L.

cmp_constraint(Res, =:=, Val,Res #= Val).
cmp_constraint(Res, =\=, Val, Res #\= Val).
cmp_constraint(Res, <, Val, Res #< Val).
cmp_constraint(Res, >, Val, Res #>Val).
cmp_constraint(Res, =<, Val, Res #= Val #\/ Res #< Val).
cmp_constraint(Res, >=, Val, Res #= Val #\/ Res #> Val).

cmp_short_constraint(Res, is_odd, Res mod 2 #=1).
cmp_short_constraint(Res, is_even, Res mod 2 #=0).
cmp_short_constraint(_, is_prime, _) :- error('primality test not available').


%% Collect constraints

constraint(Vs, Name, C) :- 
    given(Name, GivenConstr), 
    unfold(Vs, Name, GivenConstr, C).

all_constraints(Name,All) :-
    findall(C,given(Name,C),All).

apply_unfold(Vs, Name, GivenConstr) :-
    unfold(Vs, Name, GivenConstr, C), !,
    C.

apply_constraints(Vs, Name) :- 
    all_constraints(Name,All),
    maplist(apply_unfold(Vs, Name), All).


%% Translation

% n-permutations
count(Name, NSols) :- 
    sequence(Xs, N, Name), 
    group_given(Xs),
    length(Ys, N),
    domain(Xname, Dom),
    Ys ins Dom,
    apply_constraints(Ys, Name),
    findall(Ys, label(Ys), Sols),
    sols2props(Xname, Sols, Props),
    writeln(Props),
    length(Sols, NSols), !.

given(Name, alldiff) :- sequence(_, _, Name).

% n-subsets
count(Name, NSols) :- 
    take(Xs, N, Name), 
    group_given(Xs),
    length(Ys, N),
    domain(Xname, Dom),
    Ys ins Dom,
    apply_constraints(Ys, Name),
    findall(Ys, label(Ys), Sols),
    sols2props(Xname, Sols, Props),
    writeln(Props),
    length(Sols, NSols), !.

given(Name, alldiff) :- take(_, _, Name).

% n-multisubsets
count(Name, NSols) :- 
    take_wr(Xs, N, Name), 
    group_given(Xs),
    length(Ys, N),
    domain(Xname, Dom),
    Ys ins Dom,
    apply_constraints(Ys, Name),
    findall(Ys, label(Ys), Sols),
    sols2props(Xname, Sols, Props),
    writeln(Props),
    length(Sols, NSols), !.


%% Solver

count(Name, NSols) :-  
            map(Xname,Yname,Name),
            group_given(Xname),
            group_given(Yname),
            size_given(Xname,Nx),
            size_given(Yname,_),
            length(Ys, Nx),
            domain(Yname, Dom),
            Ys ins Dom,
            apply_constraints(Ys, Name),
            findall(Ys, label(Ys), Sols),
            sols2props(Yname, Sols, Props),
            writeln(Props),
            length(Sols, NSols).

