group(class).
property(class,[dutch,french,italian]).
size(class,dutch,3).
size(class,and(dutch,not(french)),2).
size(class,6).
count(size(class,french)).


%%%%%%%%%%%%

size(name,not(F),N) :- size(name,S), size(name,F,M), N is S-F.
size(name,and(L,R),N) :- size(name,L,NL), size(name,R,NR), .
size(name,union(L,R),N)  :- 
    size(name,L,NL), 
    size(name,R,NR), 
    size(name,and(L,R),IN), 
    N is NL+NR-IL. 

bit_vect([],0).
bit_vect([B|Bs],L) :- 
    length([B|Bs],L), 
    in_out(B), 
    N is L-1, 
    bit_vec(Bs,N).

in_out(0).
in_out(1).


% partition(container,V) :- 
%     gen_vector(V,L),
%     length([P|Ps],L),
%     property(container, [P|Ps]).

% gen_vector(V,L) :-
%     length(Vec,L),