obj_enemy_baszeWalk = 0;

obj_enemy_baseRun = 0;

obj_enemy_velocity = 0;

obj_enemy_cooldown = 0;

obj_enemy_currentHp = 0;

obj_enemy_direction = 0;

obj_enemy_baseHp = 1;

obj_enemy_damageControl = 0;

obj_enemy_currentHp = obj_enemy_baseHp + (obj_enemy_damageControl);

state = states.idle;

state_array[states.idle] = enemy_state_idle;
state_array[states.wander] = enemy_state_wander;
state_array[states.alert] = enemy_state_alert;
state_array[states.attack] = enemy_state_attack;
state_array[states.charge] = enemy_state_charge;

counter = 0;
spd = 2;
spd_charge = 6;

my_dir = irandom_range(0, 359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);