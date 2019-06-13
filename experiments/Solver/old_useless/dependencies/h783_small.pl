                            probability(atleast(2,1-18,left-handed)).
                                  property(outcome(0),[left-handed]).
static_instance(1-9,[0.9-none_of([left-handed]), 0.1-(left-handed)]).
                                                take_wr(1-9,1-18,4).
given(exactly(rel(10/100,1-9), 1-9, left-handed)).
group(1-9).
root_ms(1-9,[(0.9, none_of([left-handed])), (0.1, left-handed)]).
setup_ms(1-9,[(0.9, none_of([left-handed])), (0.1, left-handed)]).
        compressed_root(1-9,[0.9-none_of([left-handed]), 0.1-(left-handed)]).
 root_ms_compressed(1-9,[(0.9, none_of([left-handed])), (0.1, left-handed)]).
setup_ms_compressed(1-9,[(0.9, none_of([left-handed])), (0.1, left-handed)]).
