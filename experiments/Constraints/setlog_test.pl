consult_lib.
% all_pairs(S) :- 
%     forall(X in S, exists([X1,X2], X = [X1,X2])).


% in_difference(X,Set1,Set2) :-
%     set(Set1) & set(Set2) &
%     X in Set1 & 
%     X nin Set2.	

% all(Set1,Set2,SS) :- findall(X, in_difference(X,Set1,Set2), SS).

% student(s1). 
% student(s2).
% student(s3). 
% student(s4).
% student(s5).
% dutch(s1). 
% dutch(s2).
% french({s2,s3}).

% ts(I) :- S = {X:student(X)} & D={Y:dutch(Y)} & inters(S,D,I).

% po(L) :- student(X) & dutch(Y) & X neq Y & L = {X,Y}.

% small_subset(X,S) :- subset(X,S) & size(X,N) & N<2.
% powerset(S,P) :- P= {X:subset(X,S)}.

% pairs({},_).
pair(P,S) :- subset(P,S) & size(P,2).
pairs(S,PS) :- PS = {X: pair(X,S)}.

disjoint({X,Y}) :- disj(X,Y).
all_disj(SS) :- pairs(SS,PS) & forall(P in PS, disjoint(P)).

partition(PS,S,N) :- bun(PS,S) & all_disj(PS)& forall(P in PS, P neq {}) & size(PS,N).

partition2(PS,S,N) :- size(PS,N) & forall(P in PS, P neq {} & subset(P,S)) & all_disj(PS).

% partition3(PS,S,N) :- size(PS,N) & forall(E in S, E in Ps & Ps in PS) & all_disj(PS).
partition3(PS,S,N) :- forall(E in S, E in S).

gnep(S)  :- forall(X in S, write(X) & nl).

nebun(SS,S) :- bun(SS,S) & forall(X in SS, X neq {} & X neq S).

test(PS,S,N) :- size(PS,N) & nebun(PS,S) & all_disj(PS).


% all_disj(_,{}).
% all_disj(X,{S/SS}) :-  disj(X,S) & all_disj(X,SS).
% partition(P,S) :- forall(X in P, diff(P,{X},R)) & bun(P,S).
% partitions(S,P) :- P = {X:subset(X,S)} & partition(P,S).