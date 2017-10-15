/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 490CA278
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "obj_base_run"
obj_base_run = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0A08ECC0
/// @DnDArgument : "expr" "10"
/// @DnDArgument : "var" "obj_base_hit"
obj_base_hit = 10;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 592E7BBF
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "obj_base_hp"
obj_base_hp = 100;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61593D24
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "obj_base_walk"
obj_base_walk = 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3B252C9C
/// @DnDArgument : "var" "obj_base_cooldown"
obj_base_cooldown = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DCE324E
/// @DnDArgument : "var" "obj_base_velocity"
obj_base_velocity = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 12887379
/// @DnDArgument : "var" "obj_base_damageControl"
obj_base_damageControl = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 41F28C84
/// @DnDArgument : "expr" "obj_base_hp + obj_base_damageControl"
/// @DnDArgument : "var" "obj_base_currentHp"
obj_base_currentHp = obj_base_hp + obj_base_damageControl;