baseSpd = obj_base.obj_base_walk;
factor = obj_base.obj_base_run;
spd = baseSpd;
baseHp = obj_base.obj_base_hp;
damageControl = 0;
currentHp = baseHp + damageControl;

cooldown = 0;
stamina = 10;

playerFollowMouse = false;
playerDirection = directions.up;
state = states.idle;

state_array[states.idle] = player_state_idle;
state_array[states.walk] = player_state_walk;
state_array[states.attack] = player_state_attackSimple;
playerSprDb();


