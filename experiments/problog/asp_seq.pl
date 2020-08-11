
dom(1..4).

1{ x(X) : dom(X) } 1 .
1{ y(X) : dom(X) } 1 .
1{ z(X) : dom(X) } 1 .

:- x(X), y(X).
:- x(X), z(X).
:- z(X), y(X).