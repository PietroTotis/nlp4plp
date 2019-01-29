
probability(not(and(atleast(1,1-3,1),and(atleast(1,1-3,2),atleast(1,1-3,3))))).
                                                                                                         property(outcome(0),[1, 3, 2, 5, 4, 6]).
                                                                                             static_instance(1-5,[1-1, 1-2, 1-3, 1-4, 1-5, 1-6]).
                                                                                                                             take_wr(1-5,1-3,3).
given(exactly(1, 1-5, 2)).
given(exactly(1, 1-5, 1)).
given(exactly(1, 1-5, 6)).
given(exactly(1, 1-5, 4)).
given(exactly(1, 1-5, 5)).
given(exactly(1, 1-5, 3)).
group(1-5).
size(1-5, 6).
root_ms(1-5,[6, 5, 4, 3, 2, 1]).
setup_ms(1-5,[(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6)]).
                      compressed_root(1-5,[1-1, 1-2, 1-3, 1-4, 1-5, 1-6]).
                               root_ms_compressed(1-5,[6, 5, 4, 3, 2, 1]).
setup_ms_compressed(1-5,[(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6)]).
