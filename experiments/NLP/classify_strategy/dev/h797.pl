% H797: The edge roughness of slit paper products increases as knife blades wear.  Only 1 percent of products slit with new blades have rough edges, 3 percent of products slit with blades of average sharpness exhibit roughness, and 5 percent of products slit with worn blades exhibit roughness.  If 25 percent of the blades in manufacturing are new, 60 percent are of average sharpness, and 15 percent are worn, what is the proportion of products that exhibit edge roughness? ## Solution= 0.028

group(1-7).

given(exactly(rel(60/100, 1-7), 1-7, average)).
given(exactly(rel(25/100, 1-7), 1-7, new)).
given(exactly(rel(3/100, 1-7, average), 1-7, and(average, roughness))).
given(exactly(rel(1/100, 1-7, new), 1-7, and(new, roughness))).
given(exactly(rel(5/100, 1-7, worn), 1-7, and(roughness, worn))).
given(exactly(rel(15/100, 1-7), 1-7, worn)).

take(1-7, 3-28, 1).

probability(all(3-28, roughness)).

property(rough, [roughness]).
property(blade, [new, average, worn]).

