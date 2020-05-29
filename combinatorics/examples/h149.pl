% h149.json
% "If there are no restrictions on where the digits and letters are placed, how many 8-place license plates consisting of 5 letters and 3 digits are possible if no repetitions of letters or digits are allowed."	6*26*25*24*23*22*10*9*8

group(letters).
size(letters,26).
group(digits).
size(digits,10).
subsets(plate_letters,letters,5).
subsets(plate_numbers,numbers,3).
union(license_plate,[plate_letters,plate_numbers]).
count(sequences(license_plate,8)).