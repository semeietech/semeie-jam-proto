/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 566F8369
/// @DnDArgument : "x" "obj_player_velocite"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += obj_player_velocite;
y += 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2E40C948
/// @DnDArgument : "expr" ""WALK""
/// @DnDArgument : "var" "obj_player_action"
obj_player_action = "WALK";