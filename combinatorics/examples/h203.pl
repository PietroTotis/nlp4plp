% h203.json
% "In how many ways can we paint three houses, each in any of four colors?"	64

group(houses).
size(houses,3).
group(colours).
size(colours,4).
count(sequences_wr(painted,houses,colours)).