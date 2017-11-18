/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40022882
/// @DnDArgument : "expr" "(obj_player_baseRun)*obj_player_baseWalk"
/// @DnDArgument : "var" "obj_player_velocite"
obj_player_velocite = (obj_player_baseRun)*obj_player_baseWalk;

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 35FD257E
/// @DnDArgument : "var" "obj_player_action"
/// @DnDArgument : "key" ""RUN""
/// @DnDArgument : "value" "true"
ds_map_replace(obj_player_action, "RUN", true);