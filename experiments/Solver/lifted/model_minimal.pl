0.3::event1.
0.3::event2.
0.3::event3.

y1:- event1.
n1 :- \+ event1.
y2:- event2.
n2 :- \+ event2.
%2
b_2_0 :- b_1_0, n2.
b_1_1 :- b_1_0, y2.
b_1_1 :- b_0_1, n2.
b_0_2 :- b_0_1, y2.

%1
b_1_0 :- n1.
b_0_1 :- y1.

all :- b_2_0.
all :- b_1_1.
all :- b_0_2.

atleast1 :- b_1_1.
atleast1 :- b_0_2.

query(atleast1).
