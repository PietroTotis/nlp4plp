
dom(1..5).

1{ x(X) : dom(X) } 1 .
1{ y(X) : dom(X) } 1 .
1{ z(X) : dom(X) } 1 .

:- x(X), y(Y), X>=Y.
:- x(X), z(Z), X>=Z.
:- z(Z), y(Y), Y>=Z.