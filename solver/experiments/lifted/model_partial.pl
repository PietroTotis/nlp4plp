0.3::event1.
0.3::event2.
0.3::event3.
0.3::event4.
0.3::event5.

y1:- event1.
n1 :- \+ event1.
y2:- event2.
n2 :- \+ event2.
y3:- event3.
n3 :- \+ event3.
y4:- event4.
n4 :- \+ event4.
y5:- event5.
n5 :- \+ event5.

%5
b_5_0 :- b_4_0, n5.
b_4_1 :- b_4_0, y5.
b_4_1 :- b_3_1, n5.
b_3_2 :- b_3_1, y5.
b_3_2 :- b_2_2, n5.
b_2_3 :- b_2_2, y5.
b_2_3 :- b_1_3, n5.
b_1_4 :- b_1_3, y5.
b_1_4 :- b_0_4, n5.
b_0_5 :- b_0_4, y5.

%4
b_4_0 :- b_3_0, n4.
b_3_1 :- b_3_0, y4.
b_3_1 :- b_2_1, n4.
b_2_2 :- b_2_1, y4.
b_2_2 :- b_1_2, n4.
b_1_3 :- b_1_2, y4.
b_1_3 :- b_0_3, n4.
b_0_4 :- b_0_3, y4.

%3
b_3_0 :- b_2_0, n3.
b_2_1 :- b_2_0, y3.
b_2_1 :- b_1_1, n3.
b_1_2 :- b_1_1, y3.
b_1_2 :- b_0_2, n3.
b_0_3 :- b_0_2, y3.

%2
b_2_0 :- b_1_0, n2.
b_1_1 :- b_1_0, y2.
b_1_1 :- b_0_1, n2.
b_0_2 :- b_0_1, y2.

%1
b_1_0 :- n1.
b_0_1 :- y1.

all :- b_5_0.
all :- b_4_1.
all :- b_3_2.
all :- b_2_3.
all :- b_1_4.
all :- b_0_5.

atleast4 :- b_1_4.
atleast4 :- b_0_5.

atleast3 :- b_2_3.
atleast3 :- b_1_4.
atleast3 :- b_0_5.

query(atleast3).
