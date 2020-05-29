% h213.json
% "In how many ways can we draw five cards from an ordinary deck of 52 cards?"	52^5


group(deck).
size(deck,52).
count(subsets(cards,deck,5)).