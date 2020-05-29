% H274: 100,000 people are polled.  They are asked whether they use Facebook, Twitter, and Myspace.  10,000 use Twitter ; 30,000 use Facebook ; 5,000 use Myspace ; 8,000 use Twitter and Facebook ; 2,000 use Twitter and Myspace ; 4,000 use Facebook and Myspace ; and 1,000 use all 3.  What percent of the people polled do not use any of the 3 networking tools? ## Solution= 0.68

group(1-2).
size(1-2, 100000).

given(exactly(2000, 1-2, and(myspace, twitter))).
given(exactly(10000, 1-2, twitter)).
given(exactly(5000, 1-2, myspace)).
given(exactly(8000, 1-2, and(facebook, twitter))).
given(exactly(30000, 1-2, facebook)).
given(exactly(4000, 1-2, and(facebook, myspace))).
given(exactly(1000, 1-2, and(facebook, and(myspace, twitter)))).

take(1-2, 4-5, 1).

probability(all(4-5, not(or(facebook, or(twitter, myspace))))).

property(twitter, [twitter]).
property(fb, [facebook]).
property(ms, [myspace]).

