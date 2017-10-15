/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 40022882
/// @DnDArgument : "expr" "obj_player_baseRun*obj_player_baseWalk"
/// @DnDArgument : "var" "obj_player_velocite"
obj_player_velocite = obj_player_baseRun*obj_player_baseWalk;

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 1717B5AE
show_debug_message(string("debug message"));

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 43D84A4A
/// @DnDArgument : "msg" "obj_base.obj_base_test"
show_debug_message(string(obj_base.obj_base_test));