/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 31EE5CF7
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "obj_player_velocite"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += obj_player_velocite;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 538A1208
/// @DnDArgument : "expr" ""WALK""
/// @DnDArgument : "var" "obj_player_action"
obj_player_action = "WALK";