% using the original solver to generate transformations of the input files

% ecpects two files: the original model and the conversion parameter file specifying active_request/2
:- cmd_args([File1,File2]), consult(File1), consult(File2).

:- use_module(library(lists)).
:- consult('old/input_interface.pl').
:- consult('old/multiset_constraints.pl').
:- consult('old/ge_solver_sparse.pl').
:- consult('old/histograms.pl').
:- consult('old/property_based_merging.pl').
:- consult('old/terms_to_predicates.pl').

% for root nodes, compute:
% original static instance + its compressed version
query(static_instance(S,I)) :- active_request(orig,false), static_set(S).
query(compressed_root(S,I)) :- active_request(orig,true), static_set(S).
% tuple-multiset versions
query(setup_ms(S,I)) :- active_request(ms,false), static_set(S).
query(setup_ms_compressed(S,I)) :- active_request(ms,true), static_set(S).
% list-multiset versions
query(root_ms(S,I)) :- active_request(list,false), static_set(S).
query(root_ms_compressed(S,I)) :- active_request(list,true), static_set(S).

% copy the input
query(take_wr(A,B,C)) :- take_wr(A,B,C).
query(take(A,B,C)) :- take(A,B,C).
query(union(A,B)) :- union(A,B).
query(property(A,B)) :- property(A,B).
query(probability(A)) :- probability(A).
query(observe(A)) :- observe(A).
query(group(A)) :- group(A).
query(given(A)) :- given(A).
query(size(A,B)) :- size(A,B).


%%%%%%%%%%%% converting instances to other formats
compressed_root(N,List) :-
    compressed_instance(N,List).

setup_ms(N,List) :-
    static_instance(N,MS),
    ms2tup(MS,List).

root_ms(N,List) :-
    static_instance(N,MS),
    ms2list(MS,List).

setup_ms_compressed(N,List) :-
    compressed_root(N,MS),
    ms2tup(MS,List).

%%% convert static_instance to list or distribution
% note: distributions aren't necessarily normalised yet, see h20.pl
% if it is a multiset, turn it into a list
root_ms_compressed(N,List) :-
    compressed_root(N,MS),
    is_ms(MS,Nice),
    ms2list(Nice,List).
% ifnot, turn it into tuples
root_ms_compressed(N,List) :-
    compressed_root(N,MS),
    \+ is_ms(MS),
    ms2tup(MS,List).

ms2tup([],[]).
ms2tup([A-B|C],[(A,B)|S]) :-
    ms2tup(C,S).


% it is a multiset if each element is a natural number
is_ms(M) :-
    is_ms(M,_).
% while testing, clean up the N.0s
is_ms([],[]).
is_ms([N-E|M],[F-E|L]) :-
    full_el(N,F),
    is_ms(M,L).

ms2list(Ms,L) :-
    ms2list(Ms,[],L).
ms2list([],A,A).
ms2list([N-E|M],A,L) :-
    copy_n(N,E,A,B),
    ms2list(M,B,L).

copy_n(0,_,L,L).
copy_n(N,E,A,B) :-
    N>0,
    NN is N-1,
    copy_n(NN,E,[E|A],B).

full_el(N,I) :-
    I is integer(N),
    I =:= N.



%%%%%%%% from meta_prob

% get regular fine grained instance first, then process it (no incoming constraint)
compressed_instance(From,SuperSetC) :-
    instance_constrained(From,none,SuperSet),
    property_compress(From,SuperSet,SuperSetC).

%%%%%% instance_constrained(+SetID,+Constraint)
% interface called from constraint translation above
instance_constrained(SetID,Constraint) :-
	instance_constrained(SetID,Constraint,_).

%%%%% for given Set and Constraint, enumerate Instance satisfying it (and all direct observations on the set)
%%% set is taken with replacement, so no rest
instance_constrained(Set,Constraint,Instance) :-
	drawing_class(Set,From,wr,SType,M,TrialID),
	directly_observed_or_given(Set,Constraint,ScopeC,AllC,AggC),
	compressed_instance(From,SuperSetC),
	draw_constraints_in_out(wr,SType,M,SuperSetC,Instance,_,TrialID,ScopeC,AllC,AggC,ScopeOut,AllOut,AggOut),
	test_instance(Instance,ScopeOut,AllOut,AggOut).
%%% set is taken without replacement, consider rest's constraints as well
instance_constrained(Set,Constraint,Instance) :-
	drawing_class(Set,From,wor,SType,M,TrialID),
	directly_observed_or_given(Set,Constraint,ScopeC,AllC,AggC),
	directly_observed(rest(Set),ScopeCRest,AllCRest,AggCRest),
	compressed_instance(From,SuperSetC),
	draw_constraints_in_out(wor,SType,M,SuperSetC,Instance,InstanceRest,TrialID,ScopeC,AllC,AggC,ScopeOut,AllOut,AggOut),
	test_instance(Instance,ScopeOut,AllOut,AggOut),
	test_instance(InstanceRest,ScopeCRest,AllCRest,AggCRest).
%%% set is rest -- same principle as case above but adding incoming constraint to the ones on rest
instance_constrained(rest(Set),Constraint,InstanceRest) :-
	drawing_class(Set,From,wor,SType,M,TrialID),
	directly_observed(Set,ScopeC,AllC,AggC),
	directly_observed_or_given(rest(Set),Constraint,ScopeCRest,AllCRest,AggCRest),
	compressed_instance(From,SuperSetC),
	draw_constraints_in_out(wor,SType,M,SuperSetC,Instance,InstanceRest,TrialID,ScopeC,AllC,AggC,ScopeOut,AllOut,AggOut),
	test_instance(Instance,ScopeOut,AllOut,AggOut),
	test_instance(InstanceRest,ScopeCRest,AllCRest,AggCRest).
%%% set is union -- generate & test for now
instance_constrained(Set,Constraint,Instance) :-
	union(Set,List),
	union_instance(List,[],Instance),
	directly_observed_or_given(Set,Constraint,ScopeC,AllC,AggC),
	test_instance(Instance,ScopeC,AllC,AggC).
%%% set is static - no incoming constraint to take into account
instance_constrained(Set,_,Instance) :-
	static_set(Set),
	static_instance(Set,Instance).%,debugprint(Set,Instance).
instance_constrained(Set,_,Instance) :-
	static_set(Set),
	\+ cstatins(Set),
	error('static instance computation failed ',Set).
%%% set is chosen from supergroup: the only constraints allowed as incoming are chosen(Set,Group) and none
instance_constrained(Set,chosen(Set,Group),Instance) :-
	choose_group(From,Set),
	super_group_instance(From,Super),
	draw_constraints_in_out(wr,set,1,Super,[1-Group],_,cg(From,Set),[],[],[],[],[],[]),
	compressed_instance(Group,Instance).
instance_constrained(Set,none,Instance) :-
	choose_group(From,Set),
	super_group_instance(From,Super),
	draw_constraints_in_out(wr,set,1,Super,[1-Group],_,cg(From,Set),[],[],[],[],[],[]),
	compressed_instance(Group,Instance).


% auxiliary for error catching
cstatins(Set) :-
	static_instance(Set,Instance).

% generate instance of union by generating & merging its parts
union_instance([],Inst,Inst).
union_instance([First|Rest],Acc,Instance) :-
	compressed_instance(First,FI),
	merge_hist(FI,Acc,Next),
	union_instance(Rest,Next,Instance).

% classify the cases where Set is Taken
% drawing_class(+Set,-From,-WType,-SType,-Num,-TrialID)
drawing_class(Set,From,wr,seq,M,take_wr(From,Set)) :-
	take_w(From,Set,M),
	set_is_sequence(Set).
drawing_class(Set,From,wr,set,M,take_wr(From,Set)) :-
	take_w(From,Set,M),
	\+ set_is_sequence(Set).
drawing_class(Set,From,wor,seq,M,take_wor(From,Set)) :-
	take_wo(From,Set,M),
	set_is_sequence(Set).
drawing_class(Set,From,wor,set,M,take_wor(From,Set)) :-
	take_wo(From,Set,M),
	\+ set_is_sequence(Set).
