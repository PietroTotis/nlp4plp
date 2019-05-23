% H883: Suppose that an airplane passenger whose itinerary requires a change of airplanes in Ankara, Turkey, has a 4 percent chance of losing each piece of his or her luggage independently.  Suppose that the probability of losing each piece of luggage in this way is 5 percent at Da Vinci airport in Rome, 5 percent at Kennedy airport in New York, and 4 percent at O'Hare airport in Chicago.  Dr.May travels from Bombay to San Francisco with one piece of luggage in the baggage compartment.  He changes airplanes in Ankara, Rome, New York, and Chicago.  What is the probability that his luggage does not reach his destination with him? ## Solution= 0.168256

group(1-14).

given(exactly(rel(4/100,1-14), 1-14, lose)).
group(2-37).

given(exactly(rel(4/100,2-37), 2-37, lose)).
group(2-27).

given(exactly(rel(5/100,2-27), 2-27, lose)).
group(2-19).

given(exactly(rel(5/100,2-19), 2-19, lose)).

take_wr(1-14, 1-12-0, 1).
take_wr(2-27, 1-12-1, 1).
take_wr(2-37, 1-12-2, 1).
take_wr(2-19, 1-12-3, 1).
union(1-12, [1-12-0,1-12-1,1-12-2,1-12-3]).


probability(atleast(1, 1-12, lose)).

property(outcome(0), [lose]).

