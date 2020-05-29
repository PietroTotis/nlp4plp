set(players).
set(spanish).
set(tall).
% subset(set(players),set(spanish)).
% subset(spanish,madrid).
% subset(set(players),set(tall)).
% set(players,12).
% subset(players,spanish,8).
% intersection(french,spanish, 5).
% subset(players,french, X).

%%%%%

% % complement(_,_,_) :- fail.
% % compl(_,_) :- fail.

% Union, intersection and complements are sets

set(U) :- set(A), set(B), \+equals(set(A),set(B)), simplify(union(set(A),set(B)),U).
set(I) :- set(A), set(B), \+equals(set(A),set(B)), simplify(intersection(set(A),set(B)),I).
set(C) :- set(A), set(B), \+equals(A,B), simplify(complement(set(A),set(B)),C).
set(C) :- set(A), set(B), \+equals(A,B), simplify(complement(set(A),set(B)),C).

%% Universe & empty

% set(empty).
% set(universe).
% subset_rev(B,A) :- subset(A,B).
% equals(A,universe) :- findall(X,set(X),Sets), maplist(subset_rev(A),Sets).

%% Subset transitivity
% subset(A,C) :- subset(A,B), subset(B,C).

%%% Equality

equals(set(S),set(S)).

equals(A,B) :-
    simplify(A,SA),
    simplify(B,SA).

%% Commutative
equals(union(A,B),union(C,D)):-
    equals(A,C),
    equals(B,D).
equals(union(A,B),union(C,D)):-
    equals(A,D),
    equals(B,C).
equals(intersection(A,B),intersection(C,D)):-
    equals(A,C),
    equals(B,D).
equals(intersection(A,B),intersection(C,D)):-
    equals(A,D),
    equals(B,C).

%% Associative
equals(union(union(A,B),C),union(A,union(B,C))).
equals(intersection(intersection(A,B),C),intersection(A,intersection(B,C))).

%% Distributive
equals(union(A,intersection(B,C)),intersection(union(A,B),union(A,C))).
equals(intersection(A,union(B,C)),union(intersection(A,B),intersection(A,C))).

% De Morgan laws
equals(complement(union(A,B)), intersection(complement(A),complement(B))) :- subset(A,U), subset(B,U).
equals(complement(intersection(A,B)), union(complement(A),complement(B))) :- subset(A,U), subset(B,U).

%%% Simplification rules

subset(set(A),set(A)).

simplify(set(S),set(S)) :- 
    atomic(S). 

simplify(union(A,B),SB) :- 
    simplify(A,SA), 
    simplify(B,SB),
    subset(SA,SB),!.
simplify(union(A,B),SA) :- 
    simplify(A,SA), 
    simplify(B,SB),
    subset(SB,SA),!.
simplify(intersection(A,B),SA) :- 
    simplify(A,SA), 
    simplify(B,SB),
    subset(SA,SB), !.
simplify(intersection(A,B),SB) :- 
    simplify(A,SA), 
    simplify(B,SB),
    subset(SB,SA), !.

%% Idempotent
simplify(union(A,B),SA) :- 
    simplify(A,SA), 
    simplify(B,SB),
    equals(SA,SB), !.
simplify(union(A,B),union(A,B)).

simplify(intersection(A,B),SA) :- 
    simplify(A,SA), 
    simplify(B,SB),
    equals(SA,SB), !.
simplify(intersection(A,B),intersection(A,B)).

%% Absorption law
simplify(union(A,intersection(A,B)),SA) :- 
    simplify(A,SA), 
    simplify(intersection(A,B),SB),
    equals(SA,SB), !.
simplify(union(A,intersection(A,B)), union(A,intersection(A,B))).

simplify(intersection(A,union(A,B)),SA) :-
    simplify(A,SA), 
    simplify(union(A,B),SU),
    equals(SA,SU), !.
simplify(intersection(A,union(A,B)),intersection(A,union(A,B))).

%% Complement
simplify(complement(complement(A,B),C),SA) :-
    simplify(A,SA),
    simplify(B,SB),
    simplify(C,SB), !.
simplify(complement(complement(A,B),C),complement(complement(SA,SB),SC)).
simplify(union(A,complement(B,C)),C) :-
    simplify(A,SA),
    simplify(B,SA), !.
simplify(union(A,complement(B,C)),union(A,complement(B,C))).
simplify(intersection(A,complement(B,C)),empty) :-
    simplify(A,SA),
    simplify(B,SA), !.
simplify(union(A,complement(B,C)),union(A,complement(B,C))).

simplify(set(S),set(S)) :- 
    atomic(S). 

simplify(union(A,B),SB) :- 
    simplify(A,SA), 
    simplify(B,SB),
    subset(SA,SB).
simplify(intersection(A,B),SA) :- 
    simplify(A,SA), 
    simplify(B,SB),
    subset(SA,SB).

%% Idempotent
simplify(union(A,B),SA) :- 
    simplify(A,SA), 
    simplify(B,SB),
    equals(SA,SB).
simplify(union(A,B),union(A,B)) :- 
    simplify(A,SA), 
    simplify(B,SB),
    \+ equals(SA,SB).

simplify(intersection(A,B),SA) :- 
    simplify(A,SA), 
    simplify(B,SB),
    equals(SA,SB), !.
simplify(intersection(A,B),intersection(A,B)) :- 
    simplify(A,SA), 
    simplify(B,SB), 
    \+ equals(SA,SB).

%% Absorption law
simplify(union(A,intersection(A,B)),SA) :- 
    simplify(A,SA), 
    simplify(intersection(A,B),SB),
    equals(SA,SB), !.
simplify(union(A,intersection(A,B)), union(A,intersection(A,B))) :- 
    simplify(A,SA), 
    simplify(intersection(A,B),SI), 
    \+ equals(SA,SI).

simplify(intersection(A,union(A,B)),SA) :-
    simplify(A,SA), 
    simplify(union(A,B),SU),
    equals(SA,SU), !.
simplify(intersection(A,union(A,B)),intersection(A,union(A,B))) :-
    simplify(A,SA), 
    simplify(union(A,B),SU),
    \+ equals(SA,SU).

%% Complement check me
simplify(complement(complement(A,B),C),SA) :-
    simplify(A,SA),
    simplify(B,SB),
    simplify(C,SB), !.
simplify(complement(complement(A,B),C),complement(complement(SA,SB),SC)) :-
    simplify(A,SA),
    simplify(B,SB),
    simplify(C,SC),
    \+ equals(SB,SC).




% %% Set algebra
% complement_inf(A,B,C) :- complement(A,B,C).

% % Subsets
% subset_inf(A,B) :- subset(A,B), !.
% subset_inf(A,B) :- union(A,B,B), !.

% % Union
% union_inf(A,B,C) :- union(A,B,C), !.
% union_inf(A,B,C) :- union(B,A,C), !.
% union_inf(A,B,B) :- subset(A,B), !.

% % Intersection
% intersection_inf(A,B,C) :- intersection(A,B,C).
% intersection_inf(A,B,C) :- intersection(B,A,C).
% intersection_inf(A,B,D) :- complement_inf(A,B,C), complement_inf(A,C,D).

% % Complement rules compl(compl(A)) = A
% complement_inf(A,CA) :- complement(A,CA).
% complement_inf(CA,A) :- complement(A,CA).

% % complementerence
% complement_inf(A,B,C) :- complement(A,B,C), !.
% complement_inf(A,B,D) :- compl(B,C), intersection_inf(A,C,D).

% % Associative
% union(A,union(B,C),D) :- union(union(A,B),C,D).
% intersection(A,intersection(B,C),D) :- intersection(intersection(A,B),C,D).

% % Distributive
% intersection(union(A,B),union(A,C),D) :- union(A,intersection(B,C),D).
% union(intersection(A,B),intersection(A,C),D) :- intersection(A,union(B,C),D).


% % Empty set
% set(empty).
% cardinality(empty,0).
% union(A,empty,A).
% intersection_inf(A,B,empty) :- complement(A,B).
% intersection(A,empty,empty).

% % Idempotent laws
% union(A,A,A).
% intersection(A,A,A).

% % Absorption laws
% union_inf(A,C,A) :- intersection(A,_,C).
% intersection_inf(A,C,A) :- union(A,_,C).

% De Morgan
% complement(C,D) :- union_inf(A,B,C), complement(A,CA), complement(B,CB), intersection_inf(CA,CB,D).
% complement(C,D) :- intersection_inf(A,B,C), complement(A,CA), complement(B,CB), union_inf(CA,CB,D).
