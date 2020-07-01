:- use_module(library(aproblog)).

:- use_semiring(
    sr_plus,   % addition (arity 3)
    sr_times,  % multiplication (arity 3)
    sr_zero,   % neutral element of addition
    sr_one,    % neutral element of multiplication
    sr_pos,
    sr_neg,    % negation of fact label
    sr_negate, 
    true,      % requires solving disjoint sum problem?
    true).    % requires solving neutral sum problem?

sr_zero(0.0).
sr_one(1.0).
sr_plus(A, B, C) :- C is A + B.
sr_times(A, B, C) :- C is A * B.

sr_pos(A, B, A).
sr_neg(A, B, 0).
sr_negate(A, 1.0).

% 1::x(1);1::x(2);1::x(3);1::x(4);1::x(5);1::x(6);1::x(7);1::x(8).
% 1::x(1);1::x(2);1::x(3);1::x(4);1::x(5).

% 1::y(1);1::y(2);1::y(3);1::y(4);1::y(5);1::y(6);1::y(7);1::y(8).

% 1::z(1);1::z(2);1::z(3);1::z(4);1::z(5);1::z(6);1::z(7);1::z(8).
1::dom(1).
1::dom(2).
1::dom(3).
1::dom(4).
1::dom(5).
1::dom(6).

% 1::partition(1).
% 1::partition(2).
% 1::partition(3).
% p :- x(X), y(Y), z(Z), X\=Y, Y\=Z, X\=Z.
% s :- x(X), y(Y), z(Z), X<Y, Y<Z.

1::par(A,1);1::par(A,2);1::par(A,3);1::par(A,4) :- dom(A).

% unordered([PA,PB,PC,PD,PE]) :- par(1,PA), par(2,PB), par(3,PC), par(4,PD), par(5,PE).

% check_unused(X,[U,Us]) :- U < X. 
% unordered([X|Xs], [U|Us]) :- check_unused(X,[U|Us]).
% unordered([X|Xs], [U|Us]) :-  unordered([Xs],[X,U|Us]).

ordered(_,[O]).
ordered([X|Xs],[O,X|Os]) :- X>O, ordered(Xs, [X|Os]).
ordered([X|Xs],[O|Os]) :- X=<O, ordered(Xs, [O|Os]).

part :- par(1,1), par(2,PB), par(3,PC), par(4,PD), par(5,PE), par(6,PF), ordered([1,PB,PC,PD,PE,PF],[1,2,3,4]).
% :- order([PA,PB,PC,PD,PE],[]), par(1,PA), par(2,PB), par(3,PC), par(4,PD), par(5,PE).
query(part).