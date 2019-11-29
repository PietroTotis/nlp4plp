:- use_module(library(clpfd)). 
:- use_module(library(lists)). 
:- debug.

group(nodes).
group(colours).
size(nodes, 5).
size(colours, 3).

property(nodes,[a,b,c,d,e]).
property(colours,[red,green,blue]).

map(nodes, colours, coloured_graph).

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
% given(coloured_graph, none(green)).
% given(coloured_graph, not(some(red))).
% given(coloured_graph, atmost(1, [b,c,d], red)).
% given(coloured_graph, and(alldiff([a,b,c]),assign(b,green))).
% given(coloured_graph, not(assign(c,red))).
% given(coloured_graph, or(assign(a,red),some(green))).
% given(coloured_graph, atleast(3,green)).
given(coloured_graph, atmost(1,green)).

%%%%%%%

given(_,_) :- fail.
% rel(_,_,_) :- fail.
group_given(Name) :- group(Name), !.
group_given(Name) :- map(_,_,Name).

size_given(Name, N) :- size(Name, N), !.
size_given(Name, N) :- map(_,_,Name), count(Name, N). 
size_given(Name, N) :- 
    property(Name, Props), 
    length(Props, N). 

prop2num(Name, Prop, N) :- 
    property(Name, Props),
    nth1(N, Props, Prop), !.
prop2num(Name, Prop, Prop) :-
    \+property(Name,_).


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

% unfold(Vars, _, aggcmp(_, Inds, Op, Comp, Val)) :-
%     c_aggcmp(Vars, Inds, Op, Comp, Val).
% unfold(Vars,  Name, aggcmp(_, Op, Comp, Val)) :-
%     c_aggcmp(Vars, Op, Comp, Val).

% unfold(Vars, _, aggcmp(L, Inds, Op, Short)) :-
%     c_aggcmp(Vars, Inds, Op, Short).
% unfold(Vars, Name, aggcmp(L, Op, Short)) :-
%     c_aggcmp(Vars, Op, Short).

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
c_allsame(Vs, Inds, C) :- 
    maplist(get_nth_var(Vs), Inds, [V|Vs]),
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
% c_atmost(Vs, N, Val) :- 
%     length(Vs, A),
%     Inv is A-N,
%     length(S,Inv),
%     subset(S,Vs),
%     writeln(S),
%     c_none(S,Val).

% c_atmost(Vs, N, Inds, Val) België:-
%     maplist(get_nth_var(Vs), Inds, Vars),
%     subset(S,Vars),
%     length(S,N),
%     c_all(S, Val).


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
    
    % maplist(unfold(Vs,Names,C),All).
% all_constraints(Vs, Name, All) :-
%     findall(C, constraint(Vs, Name, C), All).

% join_constraints(Vs, Name, true) :- 
%     all_constraints(Vs, Name, []).
% join_constraints(Vs, Name, All) :- 
%     all_constraints(Vs, Name, [C|Cs]),
%     foldl(and,Cs,C,All).

count(Name, NSols) :-  
            map(Xname,Yname,Name),
            group_given(Xname),
            group_given(Yname),
            size_given(Xname,Nx),
            size_given(Yname,Ny),
            length(Ys, Nx),
            Ys ins 1..Ny,
            apply_constraints(Ys,Name),
            findall(Ys, label(Ys), Sols),
            writeln(Sols),
            length(Sols, NSols).

