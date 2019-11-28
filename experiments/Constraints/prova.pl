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
% given(coloured_graph, assign(c, blue)).
% given(and(some([a,c,d], red), not(all([a,b,c],green)))).
% given(coloured_graph, all([a,b,c], red)).
% given(coloured_graph, alldiff([a,b])).
% given(coloured_graph, all([a,b,c],red)).
% given(coloured_graph, none(green)).
given(coloured_graph, atleast(2,green)).
given(coloured_graph, atleast(1, [b,c,d], red)).

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


% and(L,R) :- L #/\ R.
% or(L,R) :- L #\/ R.
% not(V) :- #\ V.
% and(Vars, [Ind1,Ind2]) :- 
%     nth0(Ind1,Vars,L), 
%     nth0(Ind2,Vars,R),
%     L #\/ R.

% not(Vars, Ind) :- 
%     nth0(Ind,Vars,V),
%     #\ V.

% or(Vars, [Ind1,Ind2]) :-
%     nth0(Ind1,Vars,L), 
%     nth0(Ind2,Vars,R),
%     L #/\ R.

neq(A,B) :- A #\= B.
get_nth_var(Vars, N, Var) :- nth0(N, Vars, Var).
is_nth_var(Vars, Var, N) :- element(N, Vars, Var).

%% Logic

unfold(Vars, _, allsame) :- c_allsame(Vars).
unfold(Vars, Name, allsame(Xs)) :- 
    map(XName, _, Name),
    maplist(prop2num(XName), Xs, Inds), !,
    c_allsame(Vars, Inds).

unfold(Vars, _, alldiff) :- c_alldiff(Vars).
unfold(Vars, Name, alldiff(Xs)) :- 
    map(XName, _, Name), 
    maplist(prop2num(XName), Xs, Inds), !,
    c_alldiff(Vars, Inds).

% unfold(Vars, _, aggcmp(_, Inds, Op, Comp, Val)) :-
%     c_aggcmp(Vars, Inds, Op, Comp, Val).
% unfold(Vars,  Name, aggcmp(_, Op, Comp, Val)) :-
%     c_aggcmp(Vars, Op, Comp, Val).

% unfold(Vars, _, aggcmp(L, Inds, Op, Short)) :-
%     c_aggcmp(Vars, Inds, Op, Short).
% unfold(Vars, Name, aggcmp(L, Op, Short)) :-
%     c_aggcmp(Vars, Op, Short).

unfold(Vars, Name, all(Y)) :- 
    map(_, YName, Name),
    prop2num(YName, Y, YInd), !,
    c_all(Vars, YInd).
unfold(Vars, Name, all(Xs, Y)) :- 
    map(XName, YName, Name),
    maplist(prop2num(XName), Xs, Inds),
    prop2num(YName, Y, YInd),
    c_all(Vars, Inds, YInd).

unfold(Vars, Name, none(Y)) :- 
    map(_, YName, Name),
    prop2num(YName, Y, YInd), !,
    c_none(Vars, YInd).
unfold(Vars, Name, none(Xs, Y)) :- 
    map(XName, YName, Name),
    maplist(prop2num(XName), Xs, Inds),
    prop2num(YName, Y, YInd),
    c_none(Vars, Inds, YInd).

% unfold(Vars, some(L, Val)) :- 
%     c_some(Vars, Val).
% unfold(Vars, some(L, Inds, Val)) :- 
%     c_some(Vars, Inds, Val).

% unfold(Vars, _, atmost(N, L, Val)) :- 
%     c_atmost(Vars, N, L, Val).
% unfold(Vars, Name, atmost(N, L, Inds, Val)) :- 
%     c_atmost(Vars, N, L, Inds, Val).

unfold(Vars, _, atleast(N, Val)) :- 
    c_atleast(Vars, N, Val).
unfold(Vars, Name, atleast(N, Inds, Val)) :- 
    c_atleast(Vars, N, L, Inds, Val).


%% Constraints

c_alldiff(AllVars) :- 
    all_different(AllVars).
c_alldiff(AllVars, Inds) :- 
    maplist(get_nth_var(AllVars), Inds, Vars),
    all_different(Vars).

c_allsame(AllVars) :- 
    chain(AllVars, #=).
c_allsame(AllVars, Inds) :- 
    maplist(get_nth_var(AllVars), Inds, Vars),
    chain(Vars, #=).

c_all(AllVars, Val) :-
    chain([Val|AllVars], #=).
c_all(AllVars, Inds, Val) :-
    maplist(get_nth_var(AllVars), Inds, Vars),
    chain([Val|Vars], #=).

c_none(AllVars, Val) :- maplist(neq(Val), AllVars).
c_none(AllVars, Inds, Val) :-
    maplist(get_nth_var(AllVars), Inds, Vars),
    maplist(neq(Val), Vars).

% c_atleast(AllVars, N, Val) :-


%% Collect constraints

not_assign_constraint(Name, C) :- given(Name, C), C\=assign(_,_). 

all_constraints(Name, All) :-
    findall(C, not_assign_constraint(Name, C), All).

%% Assignments 

assign(Vars, [Ind,Val]) :- 
    nth0(Ind,Vars,Var),
    Var #= Val.

assign_constraint(Name, Xind, Yind) :-
    map(Xname, Yname, Name),
    given(Name,assign(X,Y)),
    prop2num(Xname,X,Xind),
    prop2num(Yname,Y,Yind).

all_assign_constr(Name,All) :- 
    findall([X,Y], assign_constraint(Name,X,Y), All).

count(Name, NSols) :-  
            map(Xname,Yname,Name),
            group_given(Xname),
            group_given(Yname),
            size_given(Xname,Nx),
            size_given(Yname,Ny),
            length(Ys, Nx),
            Ys ins 1..Ny,
            all_assign_constr(Name,Inds),
            maplist(assign(Ys),Inds),
            all_constraints(Name, Constr),
            maplist(unfold(Ys, Name), Constr),
            % rel(edge,X,Y) #==> nth0(0,Ys,3),
            % edge(X,Y), nth0(X,Color,CX), nth0(Y,Color,CY), CX#\=CY,
            % given(Rel, Op),
            findall(Ys, label(Ys), Sols),
            length(Sols, NSols).

