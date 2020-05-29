
:- use_module(library(lists)).
% :- use_module(library(maplist)).

%%%%%%%%%%

declare(ev(time)).
declare(ev(small)).
declare(ev(large)).

declare(prob(cond(ev(time),ev(small)), 0.9)).
declare(prob(ev(small), 0.75)).
declare(prob(cond(ev(time),ev(large)), 0.6)).
declare(prob(ev(large),0.25)).
declare(prob(inter([ev(small),ev(large)]),0.0)).

% query(probability(...), _ ).

%%%%%%%%%%

prob(Ev,Val) :- declare(prob(Ev,Val)), !.
ev(Ev) :- declare(ev(Ev)).

values([],[]).
values([Ev|Evs], [EvVal|EvsVal]) :-
    prob(Ev, EvVal),
    values(Evs, EvsVal).

prodlist([],1).
prodlist([X|Xs], Acc):- prodlist(Xs,Pr), Acc is X*Pr.

% Independence

independent(ev(A), ev(B)) :-
    \+ declare(prob(cond(ev(A),ev(B)), _)),
    \+ declare(prob(cond(ev(B),ev(A)), _)).

independent([Ev|Evs]) :-
    permutation([Ev|Evs],[P|Ps]),
    maplist(independent(P), Ps),
    independent(Ps).


% Mutual exclusion

mutual_exclusion(ev(A),ev(B)) :- declare(prob(inter([ev(A),ev(B)]), 0.0)), !.
mutual_exclusion(ev(A),ev(B)) :- declare(prob(inter([ev(B),ev(A)]), 0.0)).

mutual_exclusion([ev(_)]).
mutual_exclusion([ev(A),ev(B)|Evs]) :-
    checklist(mutual_exclusion(ev(A)), [ev(B)|Evs]),
    mutual_exclusion([ev(B)|Evs]).

% Conditional probabilities

prob(cond(ev(A),ev(B)), 0.0) :-
    mutual_exclusion(ev(A),ev(B)).

prob(cond(ev(A),ev(B)), Val) :-
    \+ mutual_exclusion(ev(A),ev(B)),
    prob(ev(A), Val),
    independent(ev(A),ev(B)).

prob(cond(ev(A),ev(B)), Val) :-
    prob(inter([ev(A),ev(B)]), Uval),
    prob(ev(B), BVal),
    BVal =\= 0.0,
    Val is Uval/BVal.

prob(cond(ev(A),compl(ev(B))), Val) :-
    mutual_exclusion(ev(A),ev(B)),
    prob(ev(A), AVal),
    prob(ev(B), BVal),
    BVal =\= 1,
    Val is AVal/(1-BVal).

% bayes
prob(cond(ev(A),ev(B)), Val) :-
    prob(A, AVal),
    prob(B, BVal),
    BVal =\= 0.0,
    prob(cond(ev(B),ev(A)),CVal),
    Val is CVal*AVal/BVal.

prob(cond(ev(A),inter(Evs)), Val) :-
    prob(ev(A), Aval),
    prob(inter(Evs), IVal),
    IVal =\= 0.0,
    prob(cond(Evs,ev(A)), CVal),
    Val is CVal*Aval/IVal.


% Intersection

prob(inter([ev(Ev)]), Val) :- prob(ev(Ev), Val).
prob(inter([A,B|Evs]), 0.0) :- mutual_exclusion([A,B|Evs]).

% chain rule
prob(inter([ev(A),ev(B)]), Val) :-
    prob(ev(A), BVal),
    prob(cond(ev(B),ev(A)), CVal),
    Val is BVal*CVal.

% fixme please
% prob(inter([ev(A), ev(B), ev(C)|Evs]), Val) :-
%     prob(cond(ev(A), inter([ev(B), ev(C)|Evs])), CVal),
%     prob(inter([ev(B), ev(C)|Evs],IVal)),
%     Val is CVal*IVal.

% Complementation
prob(compl(ev(E)), CVal) :-
    prob(ev(E), Val),
    CVal is 1-Val.

% Union:

prob(union([]), 0).
prob(union(ev(Ev)), Val) :- prob(ev(Ev), Val).

% mutually exclusive events: sum of marginals
prob(union([A,B|Evs]), Val) :-
    mutual_exclusion([A,B|Evs]),
    values([A,B|Evs], Marginals),
    sumlist(Marginals, Val).

prob(union([A,B|Evs]), Val) :-
    \+ mutual_exclusion([A,B|Evs]),
    power_set([A,B|Evs],[Empty|Pow]),
    include_exclude(Pow, Val).

% inclusion/exclusion
power_set([], [[]]).
power_set([X|Xs], PS) :-
  power_set(Xs, PS1),
  maplist(append([X]), PS1, PS2 ),
  append(PS1, PS2, PS).

%coeff([], 0).
coeff([E|Evs], -1) :- length([E|Evs], L), L mod 2 =:= 0.
coeff([E|Evs], 1) :- length([E|Evs], L), L mod 2 =:= 1.

include_exclude([], 0.0).
include_exclude([S|Ss], Prob) :-
    coeff(S, C),
    prob(inter(S),IVal),
    include_exclude(Ss, Probs),
    Prob is C*IVal + Probs.


%Law of total probability

prob(ev(Ev), Val) :-
    partition(Partitions),
    lotp(ev(Ev), Partitions, Val).

lotp(ev(Ev), [P], Val) :-
    prob(P, PVal),
    prob(cond(ev(Ev),P), CVal),
    Val is CVal*PVal.

lotp(ev(Ev), [P,Q|Ps], Val) :-
    prob(cond(ev(Ev), P), CVal),
    prob(P, PVal),
    lotp(ev(Ev), [Q|Ps], PsVal),
    Val is CVal*PVal + PsVal.

% extra conditioning
lotp(cond(ev(Ev),inter(Evs)), [P], Val) :-
    prob(cond(ev(Ev),inter([P|Evs])), CVal),
    prob(cond(P,inter(Evs)), PVal),
    Val is CVal*PVal.

lotp(cond(ev(Ev),inter(Evs)), [P,Q|Ps], Val) :-
    prob(cond(ev(Ev),inter([P|Evs])), CVal),
    prob(cond(P,inter(Evs)), PVal),
    lotp(ev(Ev), [Q|Ps], PsVal),
    Val is CVal*PVal + PsVal.


%% Sets

partition([P,Q|Ps]) :-
    findall(ev(X),ev(X), Events),
    power_set(Events, [Empty|Candidates]),
    member([P,Q|Ps], Candidates),
    mutual_exclusion([P,Q|Ps]),
    prob(union([P,Q|Ps]), 1.0).

partition([ev(V), compl(ev(V))]).

% De Morgan Laws
compl(inter([]), []).
compl(inter([V|Evs]), union([compl(V) | compl(inter(Evs))])).

compl(union([]), []).
compl(union([V|Evs]), inter([compl(V) | compl(union(Evs))])).

prob(compl(union(Evs)), Val) :- prob(union(Evs), UVal), Val is 1-UVal.
prob(compl(inter(Evs)), Val) :- prob(inter(Evs), IVal), Val is 1-IVal.
