/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 31EE5CF7
/// @DnDArgument : "x" "0"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "obj_player_velocite"
/// @DnDArgument : "y_relative" "1"
x += 0;
y += obj_player_velocite;

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 6234788A
/// @DnDArgument : "var" "obj_player_action"
/// @DnDArgument : "key" ""WALK""
/// @DnDArgument : "value" "true"
ds_map_replace(obj_player_action, "WALK", true);