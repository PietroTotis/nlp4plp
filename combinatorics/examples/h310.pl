% h310.json
% "Ruth wants to choose 4 books to take with her on a camping trip.", "If Ruth has a total of 11 books to choose from, how many different book quartets are possible?"	330

group(books).
size(books,11).
count(subsets(choose,books,4)).