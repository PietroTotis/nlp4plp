%%% -*- Mode: Prolog; -*-

:- use_module(library(distributionalclause)). % load distributional clauses library
:- use_module(library(lists)). % load list library (prolog)

:- set_options(default). % to enable query propagation replace the line with :- set_options(default),set_query_propagation(true).
%:- set_debug(true).


:- initialization(init). % initialize DC

% define a discrete random variable (bernoulli)
coin ~ finite([0.5:true,0.2:boh]). % syntax name_variable ~ finite([prob:value,prob:value,...])

% call for example test_coin(100). to use 100 samples
test_coin(N) :-
	init, % initialize DC
	% syntax query: positive evidence,negative evidence, query, number of samples, result (probability of the query)
	query([],[],coin ~= true,N,P), % compute probability coin=true, use name_var~=value to compare the value of random variable with a value
	write('probability coin=true: '),writeln(P). % output the result
