% use the constraint pushing model
:- consult(model_push).
:- consult(sat_push).
% "deactivate" evidence-under-node filtering by always succeeding
test_observations(Node,Set).

