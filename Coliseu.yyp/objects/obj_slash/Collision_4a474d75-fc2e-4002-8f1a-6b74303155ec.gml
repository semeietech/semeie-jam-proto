/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6AF5E456
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "-10"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_player_currentHp"
with(other) {
obj_player_currentHp += -10;

}

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 54ABD60B
/// @DnDApplyTo : other
/// @DnDArgument : "msg" "obj_player_currentHp"
with(other) {
show_debug_message(string(obj_player_currentHp));
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4D11A75C
instance_destroy();