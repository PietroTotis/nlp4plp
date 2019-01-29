                            probability(exactly(1,1-18,left-handed)).
                                  property(outcome(0),[left-handed]).
static_instance(1-9,[0.7-(notleft), 0.1-(left-handed, 0.2-(ambidextrous))]).
                                                take_wr(1-9,1-18,5).
given(exactly(rel(10/100,1-9), 1-9, left-handed)).
given(exactly(rel(5/100,1-9), 1-9, ambidextrous)).
group(1-9).
root_ms(1-9,[(0.7, notleft), (0.1, left-handed), (0.2, ambidextrous)]).
setup_ms(1-9,[(0.7, notleft), (0.1, left-handed), (0.2, ambidextrous)]).
        compressed_root(1-9,[0.7-(notleft), 0.1-(left-handed), 0.2-(ambidextrous)]).
 root_ms_compressed(1-9,[(0.7, notleft), (0.1, left-handed), (0.2, ambidextrous)]).
setup_ms_compressed(1-9,[(0.7, notleft), (0.1, left-handed), (0.2, ambidextrous)]).
