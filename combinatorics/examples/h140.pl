% h140.json
% "A child has 12 blocks, of which 6 are black, 4 are red, 1 is white, and 1 is blue.", "If the child puts the blocks in a line, how many arrangements are possible?"	27,720

group(black).
size(black,6).
group(red).
size(red,4).
group(white).
size(white,1).
group(blue).
size(blue,1).
union(blocks,[black,red,white,blue]).
count(sequences(line,blocks,12)).