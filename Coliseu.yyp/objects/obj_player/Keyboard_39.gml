/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 566F8369
/// @DnDArgument : "x" "obj_player_velocite"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "0"
/// @DnDArgument : "y_relative" "1"
x += obj_player_velocite;
y += 0;

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 00CF9640
/// @DnDArgument : "var" "obj_player_action"
/// @DnDArgument : "key" ""WALK""
/// @DnDArgument : "value" "true"
ds_map_replace(obj_player_action, "WALK", true);