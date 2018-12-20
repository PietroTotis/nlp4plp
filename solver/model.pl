% from diff-evid

%%% mapping nodes to their values
%%% root nodes are assumed given (translation imported from parameters)
bn(Node,Val) :-
    root(Node,Val).
%%% nodes taken from their parent without replacement are the first component of the auxiliary node
bn(Node,Val) :-
    take(Parent,Node,N),
    bn(take(N,Parent,Node),(Val,_)),
    test_observations(Node,Val).
% their rests the second
bn(rest(Node),Val) :-
    take(Parent,Node,N),
    bn(take(N,Parent,Node),(S,Val)),
    test_observations(Node,S).
% the 0-prefix is empty and has the value of the parent as rest
bn(take(0,Parent,_),([],Val)) :-
    bn(Parent,Val).
% "real" prefixes take from the rest of the previous one and add to its instance
bn(take(N,Parent,Node),(InstN,RestN)) :-
    N > 0,
    take_nth(N,Parent,Node,InstP,Set,RestN),
    ms_union(Set,InstP,InstN).
%%% nodes taken with replacement are identical to the auxiliary
bn(Node,Val) :-
    take_wr(Parent,Node,N),
    bn(take_wr(N,Parent,Node),Val),
    test_observations(Node,Val).
% drawing nothing is the empty set
bn(take_wr(0,_,_),[]).
% drawing N > 1 means drawing an N-1 prefix, drawing one from the parent, and returning the union
bn(take_wr(N,Parent,Node),Val) :-
    N > 0,
    NN is N-1,
    bn(take_wr(NN,Parent,Node),Prefix),
    take_wr_nth(N,Parent,Node,Set),
    ms_union(Set,Prefix,Val).
%%% unions: iterate over inputs and combine values
bn(Node,Val) :-
    union(Node,List),
    bn_list(List,Val),
    test_observations(Node,Val).
%%% nth
% nth element of take-set is draw from parent
bn(nth(I,Node),Val) :-
    I > 0,
    take(Parent,Node,N),
    I =< N,
    take_nth(I,Parent,Node,_,Val,_).
% nth element of draw with replacement is nth draw from parent 
bn(nth(I,Node),Val) :-
    I > 0,
    take_wr(Parent,Node,N),
    I =< N,
    take_wr_nth(I,Parent,Node,Val).

%%% nth draw with replacement from parent's instance
take_wr_nth(N,Parent,Node,Val) :-
    bn(Parent,PSet),
    select_uniform_ms(take_wr(N,Parent,Node),PSet,E,_),
    singleton(E,Val),
    test_observations(nth(N,Node),Val).

%%% nth draw without replacement is from the rest of the previous prefix
take_nth(N,Parent,Node,InstP,Set,RestN) :-
    NN is N-1,
    bn(take(NN,Parent,Node),(InstP,RestP)),
    select_uniform_ms(take(N,Parent,Node),RestP,E,RestN),
    singleton(E,Set),
    test_observations(nth(N,Node),Set).

%%% iteratively calling parents and appending their values
bn_list([],[]).
bn_list([N|Ns],Res) :-
    bn(N,S),
    bn_list(Ns,R),
    ms_union(S,R,Res).
