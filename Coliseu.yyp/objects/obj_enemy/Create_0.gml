/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 57EE124D
/// @DnDArgument : "var" "obj_enemy_baseWalk"
obj_enemy_baseWalk = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 507D15A0
/// @DnDArgument : "var" "obj_enemy_baseRun"
obj_enemy_baseRun = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A430156
/// @DnDArgument : "var" "obj_enemy_velocity"
obj_enemy_velocity = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33B9AF11
/// @DnDArgument : "var" "obj_enemy_cooldown"
obj_enemy_cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2AB201EB
/// @DnDArgument : "var" "obj_enemy_currentHp"
obj_enemy_currentHp = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 747D3B37
/// @DnDArgument : "var" "obj_enemy_direction"
obj_enemy_direction = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0301C4E6
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "obj_enemy_baseHp"
obj_enemy_baseHp = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DCEA140
/// @DnDArgument : "var" "obj_enemy_damageControl"
obj_enemy_damageControl = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 518D472F
/// @DnDArgument : "expr" "obj_enemy_baseHp + (obj_enemy_damageControl)"
/// @DnDArgument : "var" "obj_enemy_currentHp"
obj_enemy_currentHp = obj_enemy_baseHp + (obj_enemy_damageControl);