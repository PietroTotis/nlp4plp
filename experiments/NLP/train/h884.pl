% H884: Suppose that an airplane passenger whose itinerary requires a change of airplanes in Ankara, Turkey, has a 4 percent chance of losing each piece of his or her luggage independently.  Suppose that the probability of losing each piece of luggage in this way is 5 percent at Da Vinci airport in Rome, 5 percent at Kennedy airport in New York, and 4 percent at O'Hare airport in Chicago.  Dr.May travels from Bombay to San Francisco with one piece of luggage in the baggage compartment.  He changes airplanes in Ankara, Rome, New York, and Chicago.  If the luggage does not reach his destination with him, what is the probability that it was lost at Da Vinci airport in Rome? ## Solution= .286

group(1-14).

given(exactly(rel(4/100,1-14), 1-14, losea)).
group(2-37).

given(exactly(rel(4/100,2-37), 2-37, loseo)).
group(2-27).

given(exactly(rel(5/100,2-27), 2-27, losek)).
group(2-19).

given(exactly(rel(5/100,2-19), 2-19, losev)).

take_wr(1-14, 4-3-0, 1).
take_wr(2-27, 4-3-1, 1).
take_wr(2-37, 4-3-2, 1).
take_wr(2-19, 4-3-3, 1).
union(4-3, [4-3-0,4-3-1,4-3-2,4-3-3]).
observe(all(4-3, or(losea, or(losev, or(losek, loseo))))).


probability(some(4-3, losev)).

property(outcome(2), [loseo]).
property(outcome(1), [losek]).
property(outcome(3), [losev]).
property(outcome(0), [losea]).

