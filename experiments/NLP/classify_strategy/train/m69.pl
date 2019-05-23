% M69: Joel has an MP3 player called the Jumble.  The Jumble randomly selects a song for the user to listen to.  Joel 's Jumble has 2 classical songs, 13 rock songs, and 5 rap songs on it.  What is the probability that the Jumble selects a rock or a rap song? ## Solution= 9/10

group(3-3).

given(exactly(13, 3-3, rock)).
given(exactly(2, 3-3, classical)).
given(exactly(5, 3-3, rap)).

take(3-3, 2-6, 1).

probability(all(2-6, or(rock, rap))).

property(genre, [rap, classical, rock]).

