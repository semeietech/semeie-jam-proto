current_frame = 0;
target_frame = 0;
counter = 0;
last_frame = 0;

state = states.static;
state_array[states.static] = state_static;
state_array[states.damaged] = state_damaged;
state_array[states.danger] = state_danger;