/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 566C4A65
/// @DnDInput : 11
/// @DnDArgument : "expr" "obj_base.obj_base_walk"
/// @DnDArgument : "expr_1" "obj_base.obj_base_run"
/// @DnDArgument : "expr_2" "obj_player_baseWalk"
/// @DnDArgument : "expr_4" "obj_base.obj_base_hp"
/// @DnDArgument : "expr_6" "obj_player_baseHp + obj_player_damageControl"
/// @DnDArgument : "expr_7" "obj_base.obj_base_hit"
/// @DnDArgument : "expr_8" ""DOWN""
/// @DnDArgument : "expr_9" "sprite_kronath_iddle_front"
/// @DnDArgument : "expr_10" ""IDLE""
/// @DnDArgument : "var" "obj_player_baseWalk"
/// @DnDArgument : "var_1" "obj_player_baseRun"
/// @DnDArgument : "var_2" "obj_player_velocite"
/// @DnDArgument : "var_3" "obj_player_cooldown"
/// @DnDArgument : "var_4" "obj_player_baseHp"
/// @DnDArgument : "var_5" "obj_player_damageControl"
/// @DnDArgument : "var_6" "obj_player_currentHp"
/// @DnDArgument : "var_7" "obj_player_baseHit"
/// @DnDArgument : "var_8" "obj_player_direction"
/// @DnDArgument : "var_9" "obj_player_currentSprite"
/// @DnDArgument : "var_10" "obj_player_currentAction"
obj_player_baseWalk = obj_base.obj_base_walk;
obj_player_baseRun = obj_base.obj_base_run;
obj_player_velocite = obj_player_baseWalk;
obj_player_cooldown = 0;
obj_player_baseHp = obj_base.obj_base_hp;
obj_player_damageControl = 0;
obj_player_currentHp = obj_player_baseHp + obj_player_damageControl;
obj_player_baseHit = obj_base.obj_base_hit;
obj_player_direction = "DOWN";
obj_player_currentSprite = sprite_kronath_iddle_front;
obj_player_currentAction = "IDLE";

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 0385AEF3
/// @DnDArgument : "var" "obj_player_action"
obj_player_action = ds_map_create();

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 5F41FC08
/// @DnDInput : 5
/// @DnDArgument : "var" "obj_player_action"
/// @DnDArgument : "key" ""IDLE""
/// @DnDArgument : "value" "true"
/// @DnDArgument : "key_1" ""WALK""
/// @DnDArgument : "value_1" "false"
/// @DnDArgument : "key_2" ""RUN""
/// @DnDArgument : "value_2" "false"
/// @DnDArgument : "key_3" ""RANGED""
/// @DnDArgument : "value_3" "false"
/// @DnDArgument : "key_4" ""MELEE""
/// @DnDArgument : "value_4" "false"
ds_map_replace(obj_player_action, "IDLE", true);
ds_map_replace(obj_player_action, "WALK", false);
ds_map_replace(obj_player_action, "RUN", false);
ds_map_replace(obj_player_action, "RANGED", false);
ds_map_replace(obj_player_action, "MELEE", false);

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 36AA661B
/// @DnDInput : 4
/// @DnDArgument : "var" "obj_player_sprites"
/// @DnDArgument : "var_1" "obj_player_sprites_walk"
/// @DnDArgument : "var_2" "obj_player_sprites_idle"
/// @DnDArgument : "var_3" "obj_player_sprites_melee"
obj_player_sprites = ds_map_create();
obj_player_sprites_walk = ds_map_create();
obj_player_sprites_idle = ds_map_create();
obj_player_sprites_melee = ds_map_create();

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 327936A6
/// @DnDInput : 4
/// @DnDArgument : "var" "obj_player_sprites_walk"
/// @DnDArgument : "key" ""RIGHT""
/// @DnDArgument : "value" "sprite_kronath_walk_side"
/// @DnDArgument : "key_1" ""LEFT""
/// @DnDArgument : "value_1" "sprite_kronath_walk_side"
/// @DnDArgument : "key_2" ""UP""
/// @DnDArgument : "value_2" "sprite_kronah_walk_back"
/// @DnDArgument : "key_3" ""DOWN""
/// @DnDArgument : "value_3" "sprite_kronath_walk_front"
ds_map_replace(obj_player_sprites_walk, "RIGHT", sprite_kronath_walk_side);
ds_map_replace(obj_player_sprites_walk, "LEFT", sprite_kronath_walk_side);
ds_map_replace(obj_player_sprites_walk, "UP", sprite_kronah_walk_back);
ds_map_replace(obj_player_sprites_walk, "DOWN", sprite_kronath_walk_front);

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 51D20E9E
/// @DnDInput : 4
/// @DnDArgument : "var" "obj_player_sprites_idle"
/// @DnDArgument : "key" ""RIGHT""
/// @DnDArgument : "value" "sprite_kronath_iddle_side"
/// @DnDArgument : "key_1" ""LEFT""
/// @DnDArgument : "value_1" "sprite_kronath_iddle_side"
/// @DnDArgument : "key_2" ""UP""
/// @DnDArgument : "value_2" "sprite_kronah_iddle_back"
/// @DnDArgument : "key_3" ""DOWN""
/// @DnDArgument : "value_3" "sprite_kronath_iddle_front"
ds_map_replace(obj_player_sprites_idle, "RIGHT", sprite_kronath_iddle_side);
ds_map_replace(obj_player_sprites_idle, "LEFT", sprite_kronath_iddle_side);
ds_map_replace(obj_player_sprites_idle, "UP", sprite_kronah_iddle_back);
ds_map_replace(obj_player_sprites_idle, "DOWN", sprite_kronath_iddle_front);

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 57F209B9
/// @DnDInput : 4
/// @DnDArgument : "var" "obj_player_sprites_melee"
/// @DnDArgument : "key" ""RIGHT""
/// @DnDArgument : "value" "sprite_kronah_atack_melee_onehand_back"
/// @DnDArgument : "key_1" ""LEFT""
/// @DnDArgument : "value_1" "sprite_kronah_atack_melee_onehand_back"
/// @DnDArgument : "key_2" ""UP""
/// @DnDArgument : "value_2" "sprite_kronah_atack_melee_onehand_back"
/// @DnDArgument : "key_3" ""DOWN""
/// @DnDArgument : "value_3" "sprite_kronath_atack_melee_onehand_front"
ds_map_replace(obj_player_sprites_melee, "RIGHT", sprite_kronah_atack_melee_onehand_back);
ds_map_replace(obj_player_sprites_melee, "LEFT", sprite_kronah_atack_melee_onehand_back);
ds_map_replace(obj_player_sprites_melee, "UP", sprite_kronah_atack_melee_onehand_back);
ds_map_replace(obj_player_sprites_melee, "DOWN", sprite_kronath_atack_melee_onehand_front);

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 527F15B7
/// @DnDInput : 3
/// @DnDArgument : "var" "obj_player_sprites"
/// @DnDArgument : "key" ""WALK""
/// @DnDArgument : "value" "obj_player_sprites_walk"
/// @DnDArgument : "key_1" ""IDLE""
/// @DnDArgument : "value_1" "obj_player_sprites_idle"
/// @DnDArgument : "key_2" ""MELEE""
/// @DnDArgument : "value_2" "obj_player_sprites_melee"
ds_map_replace(obj_player_sprites, "WALK", obj_player_sprites_walk);
ds_map_replace(obj_player_sprites, "IDLE", obj_player_sprites_idle);
ds_map_replace(obj_player_sprites, "MELEE", obj_player_sprites_melee);