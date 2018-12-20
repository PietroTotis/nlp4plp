% 28.9.18
% bn solver parameterised with both the model and the setting (datastructure + bn root)
% use -a ModelFile -a SettingFile

%%%%% read the following files:
% - the input model
% - the local libraries for multiset representation and root predicates (param_*)
% - the local libraries for constraint pushing and evidence constraint filtering (setting_*)
:- cmd_args([File1,File2,File3]), consult(File1), consult(File2), consult(File3).

%%%%% load local libraries shared across all settings
:- consult(constraint_checking).

%%%%% ask for query satisfied given observations
query(sat(C)) :- probability(C).
evidence(sat(C)) :- observe(C).

%%%%% make sure unused predicates do not throw errors
take_wr(_,_,_) :- fail.
take(_,_,_) :- fail.
union(_,_) :- fail.
probability(_) :- fail.
observe(_) :- fail.
