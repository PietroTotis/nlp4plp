% h144.json
% "Ten weight lifters are competing in a team weightlifting contest.", "Of the lifters, 3 are from the United States, 4 are from Russia, 2 are from China, and 1 is from Canada.", "If the scoring takes account of the countries that the lifters represent, but not their individual identities, how many different outcomes are possible from the point of view of scores?"	12,600

group(usa).
size(usa,3).
group(russia).
size(russia,4).
group(china).
size(china,2).
group(canada).
size(canada,1).
union(lifters,[usa,russia,china,canada]).
count(sequences(score,lifters,10)).
