% do not use the constraint pushing model
:- consult(model).
:- consult(sat).
% "deactivate" evidence-under-node filtering by always succeeding
test_observations(Node,Set).

