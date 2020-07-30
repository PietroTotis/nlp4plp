include "globals.mzn";       

set of int: student = {1,2,3,4,5,6,7,8};
set of int: dutch = {1,2,3,4,5};
set of int: french = {1,4,5,7,8};      
int: n = 2;    
array[1..n] of var french: sequence;
% var set of student: sequence;
      
% constraint sequence[1] in french;
% constraint sequence[2] in french;

% constraint sequence[3] in dutch;
% constraint not(sequence[3] in french);   
% constraint not(sequence[8] in dutch);      

constraint all_different(sequence);
      
constraint sum(i in 1..n)(bool2int(sequence[i] in dutch)) == 2;
% constraint sum(i in 1..n)(bool2int(sequence[i] in french)) > 2;
% constraint 2 in sequence;
% constraint sum(i in 1..n)(bool2int(sequence[i] in dutch)) < 2;
% constraint sum(i in 1..n)(bool2int(sequence[i] in french)) > 2;


solve satisfy;