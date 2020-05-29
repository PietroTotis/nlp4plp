% h146.json
% "If 4 Americans, 3 French people, and 3 British people are to be seated in a row, how many seating arrangements are possible when people of the same nationality must sit next to each other?"	(3!)*(4!)*(3!)*(3!)

% group(americans).
% size(americans,4).
% group(french).
% size(french,3).
% group(british).
% size(british,3).
% union(nationality,[americans,french,british]).