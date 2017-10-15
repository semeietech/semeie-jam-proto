/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 26EC2F5C
/// @DnDArgument : "expr" "obj_player_baseWalk"
/// @DnDArgument : "var" "obj_player_velocite"
obj_player_velocite = obj_player_baseWalk;

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 6D2E6325
/// @DnDArgument : "var" "obj_player_action"
/// @DnDArgument : "key" ""RUN""
/// @DnDArgument : "value" "false"
ds_map_replace(obj_player_action, "RUN", false);