//baseSpd = walk;
event_inherited();

factor = run;
//spd = baseSpd;
//baseHp = obj_base.obj_base_hp;
damageControl = 0;
currentHp = hp + damageControl;

cooldown = 0;
stamina = 10;

playerFollowMouse = false;
playerDirection = directions.up;
state = states.idle;

state_array[states.idle] = player_state_idle;
state_array[states.walk] = player_state_walk;
state_array[states.attack] = player_state_attackSimple;
state_array[states.soak] = state_soak;
state_array[states.damaged] = state_damaged;
state_array[states.danger] = state_danger;
playerSprDb();


