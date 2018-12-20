% from diff-push-evid

% used above to avoid extra arguments:
bn(Set,Constraint) :-
    bn(Set,Constraint,_,_).

%%% mapping nodes to their values while updating and checking constraints
%%% same structure as bn/2, but adding in auxiliaries for constraint handling
%%% root nodes are assumed given (translation imported from parameters)
bn(Node,ConstraintIn,ConstraintOut,Val) :-
    root(Node,Val),
    test_constraint(Val,ConstraintIn,ConstraintOut).
%%% nodes taken from their parent without replacement are the first component of the auxiliary node
bn(Node,ConstraintIn,ConstraintOut,Val) :-
    take(Parent,Node,N),
    bn(take(N,Parent,Node),ConstraintIn,ConstraintOut,(Val,_)),
    test_observations(Node,Val).
% their rests the second (generate and test, hoping not a lot of constraints will be on rest)
bn(rest(Node),ConstraintIn,ConstraintOut,Val) :-
    take(Parent,Node,N),
    bn(take(N,Parent,Node),true,_,(S,Val)),
    test_constraint(Val,ConstraintIn,ConstraintOut),
    test_observations(Node,S).
% the 0-prefix is empty and has the value of the parent as rest
bn(take(0,Parent,_),ConstraintIn,ConstraintOut,([],Val)) :-
    bn(Parent,true,_,Val),
    test_constraint([],ConstraintIn,ConstraintOut).
% "real" prefixes take from the rest of the previous one and add to its instance
bn(take(N,Parent,Node),ConstraintIn,ConstraintOut,(InstN,RestN)) :-
    N > 0,
    take_nth(N,Parent,Node,ConstraintIn,ConstraintOut,InstN,RestN).
%%% nodes taken with replacement are identical to the auxiliary
bn(Node,ConstraintIn,ConstraintOut,Val) :-
    take_wr(Parent,Node,N),
    bn(take_wr(N,Parent,Node),ConstraintIn,ConstraintOut,Val),
    test_observations(Node,Val).
% drawing nothing is the empty set
bn(take_wr(0,_,_),ConstraintIn,ConstraintOut,[]) :-
    test_constraint([],ConstraintIn,ConstraintOut).
% drawing N > 1 means drawing an N-1 prefix, drawing one from the parent, and returning the union
bn(take_wr(N,Parent,Node),ConstraintIn,ConstraintOut,Val) :-
    N > 0,
    NN is N-1,
    recurse(left,ConstraintIn,ConstraintIn,C1),
    bn(take_wr(NN,Parent,Node),C1,C2,Prefix),
    recurse(right,ConstraintIn,C2,C3),
    take_wr_nth(N,Parent,Node,C3,C4,Set),
    recurse_combine(ConstraintIn,C2,C4,ConstraintOut),
    ms_union(Set,Prefix,Val).
%%% unions: iterate over inputs and combine values
bn(Node,ConstraintIn,ConstraintOut,Val) :-
    union(Node,List),
    bn_list(List,ConstraintIn,ConstraintOut,Val),
    test_observations(Node,Val).
%%% nth: note that pushing constraints would push them into the prefix, so we somewhat clumsily convert the singleton back and test there
% nth element of take-set is draw from parent
bn(nth(I,Node),ConstraintIn,ConstraintOut,Val) :-
    I > 0,
    take(Parent,Node,N),
    I =< N,
    take_nth(I,Parent,Node,true,_,Val),
    singleton(E,Val),
    update(ConstraintIn,E,ConstraintOut).
% nth element of draw with replacement is nth draw from parent 
bn(nth(I,Node),ConstraintIn,ConstraintOut,Val) :-
    I > 0,
    take_wr(Parent,Node,N),
    I =< N,
    take_wr_nth(I,Parent,Node,true,_,Val),
    singleton(E,Val),
    update(ConstraintIn,E,ConstraintOut).


%%% nth draw with replacement from parent's instance
take_wr_nth(N,Parent,Node,ConstraintIn,ConstraintOut,Val) :-
    bn(Parent,true,_,PSet),
    select_uniform_ms(take_wr(N,Parent,Node),PSet,E,_),
    update(ConstraintIn,E,ConstraintOut),
    singleton(E,Val),
    test_observations(nth(N,Node),Val).

%%% nth draw without replacement is from the rest of the previous prefix
% base version: return updated constraint, full instance, rest & singleton just drawn
% left recursion gets prefix, right recursion draws single element
take_nth(N,Parent,Node,ConstraintIn,ConstraintOut,InstN,RestN,Set) :-
    NN is N-1,
    recurse(left,ConstraintIn,ConstraintIn,C1),
    bn(take(NN,Parent,Node),C1,C2,(InstP,RestP)),
    recurse(right,ConstraintIn,C2,C3),
    select_uniform_ms(take(N,Parent,Node),RestP,E,RestN),
    update(C3,E,C4),
    singleton(E,Set),
    test_observations(nth(N,Node),Set),
    recurse_combine(ConstraintIn,C2,C4,ConstraintOut),
    ms_union(Set,InstP,InstN).
% interface versions
take_nth(N,Parent,Node,ConstraintIn,ConstraintOut,InstN,RestN) :-
    take_nth(N,Parent,Node,ConstraintIn,ConstraintOut,InstN,RestN,_).
take_nth(N,Parent,Node,ConstraintIn,ConstraintOut,Set) :-
    take_nth(N,Parent,Node,ConstraintIn,ConstraintOut,_,_,Set).



%%% iteratively calling parents and appending their values
bn_list([],ConstraintIn,ConstraintOut,[]) :-
    test_constraint([],ConstraintIn,ConstraintOut).
bn_list([N|Ns],ConstraintIn,ConstraintOut,Res) :-
    recurse(left,ConstraintIn,ConstraintIn,C1),
    bn(N,C1,C2,S),
    recurse(right,ConstraintIn,C2,C3),
    bn_list(Ns,C3,C4,R),
    recurse_combine(ConstraintIn,C2,C4,ConstraintOut),
    ms_union(S,R,Res).


%%%%%%%%%%%%%%%%%%%%%%%%
%%%% testing constraints; needs to be extended to be fully general (i.e., to allow constraints on rests, which currently doesn't appear in the data)
test_constraint(_,true,true).
test_constraint([],all(P),all(P)).
test_constraint([],alldiff(C,L),alldiff(C,L)).
test_constraint([],allsame(C,V),allsame(C,V)).
test_constraint([],exactly(0,P,0),exactly(0,P,0)).
test_constraint([],atmost(N,P,0),atmost(N,P,0)) :-
    N >= 0.
test_constraint([],atleast(0,P,0),atleast(0,P,0)).
test_constraint([_|_],C,_) :-
    C \= true,
    error('constraints on root and rest are not supported ',C).

%%%% recurse(+Direction,+TopLevelIncomingConstraint,+CurrentConstraint,-ConstraintToPassDirection)
% how to pass and modify constraints in recursive cases
% bn(_,+A,-B,_) :- recurse(left,+A,+A,-C),bn(_,+C,-D,_),recurse(right,+A,+D,-E),bn(_,+E,-F,_),recurse_combine(+A,+D,+F,-B).
%% these just pass around accumulators as usual:
recurse(_,all(P),X,X).
recurse(_,alldiff(C,L),X,X).
recurse(_,allsame(C,L),X,X).
recurse(_,true,X,X).
%% for exactly K, we first do an atmost K starting from 0 to get the count, then subtract that one from K and do a fresh exactly on the rest
recurse(left,exactly(K,P,_),exactly(K,P,C),atmost(K,P,0)).  
recurse(right,exactly(K,P,_),atmost(_,_,S),exactly(KK,P,0)) :- KK is K-S.  
%% for atmost K, we first do an atmost K starting from 0 to get the count, then subtract that one from K and do a fresh atmost on the rest
recurse(left,atmost(K,P,_),atmost(K,P,C),atmost(K,P,0)).
recurse(right,atmost(K,P,_),atmost(_,_,S),atmost(KK,P,0)) :- KK is K-S.
%% for atleast K, we first do an atleast 0 starting from 0 to get the count, then subtract that one from K and do a fresh atleast on the rest
recurse(left,atleast(K,P,_),atleast(K,P,_),atleast(0,P,0)).
recurse(right,atleast(K,P,_),atleast(_,_,S),atleast(KK,P,0)) :- KK is max(K-S,0).
%% combining results of recursion: first four just return last accumulator, other three need to sum the counts they get back
recurse_combine(all(_),_,X,X).
recurse_combine(alldiff(_,_),_,X,X).
recurse_combine(allsame(_,_),_,X,X).
recurse_combine(true,_,X,X).
recurse_combine(exactly(K,P,0),atmost(_,_,I),exactly(_,_,J),exactly(K,P,N)) :- N is I+J.
recurse_combine(atmost(K,P,0),atmost(_,_,I),atmost(_,_,J),atmost(K,P,N)) :- N is I+J.
recurse_combine(atleast(K,P,0),atleast(_,_,I),atleast(_,_,J),atleast(K,P,N)) :- N is I+J.

%%%% update(+Constraint,+Element,-Constraint)
% how to update constraints on drawing an element (note that atleast, atmost, exactly are always called with count 0 on toplevel or recursion)
%% true: do nothing
update(true,_,true).
%% all: check property
update(all(P),E,all(P)) :-
    has_property(E,P).
%% alldiff: get value and if it is different, add it
update(alldiff(P,L),E,alldiff(P,[V|L])) :-
    has_class_value(E,P,V),
    \+ member(V,L).
%% allsame: get and check value (assumes the value is initialized to a fresh variable on the top level)
update(allsame(P,V),E,allsame(P,V)) :-
    has_class_value(E,P,V).
%% exactly(N): the only cases that succeed are 1/0 for sat/unsat
update(exactly(1,P,0),E,exactly(1,P,1)) :-
    has_property(E,P).
update(exactly(0,P,0),E,exactly(0,P,0)) :-
    \+ has_property(E,P).
%% atmost(K): on sat, K has to be at least 1, on unsat, at least 0
update(atmost(K,P,0),E,atmost(K,P,1)) :-
    has_property(E,P),
    1 =< K.
update(atmost(K,P,0),E,atmost(K,P,0)) :-
    \+ has_property(E,P),
    0 =< K.
%% atmost(K): on sat, K can be at most 1, on unsat, at most 0
update(atleast(K,P,0),E,atleast(K,P,1)) :-
    has_property(E,P),
    1 >= K.
update(atleast(K,P,0),E,atleast(K,P,0)) :-
    \+ has_property(E,P),
    0 >= K.


