obj_enemy_baseWalk = 0;

obj_enemy_baseRun = 0;

obj_enemy_velocity = 0;

obj_enemy_cooldown = 0;

obj_enemy_currentHp = 0;

obj_enemy_direction = 0;

obj_enemy_baseHp = 1;

obj_enemy_damageControl = 0;

obj_enemy_currentHp = obj_enemy_baseHp + (obj_enemy_damageControl);

state = states.idle;

counter = 0;
spd = .5;

my_dir = irandom_range(0, 359);
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);

my_slash = noone;