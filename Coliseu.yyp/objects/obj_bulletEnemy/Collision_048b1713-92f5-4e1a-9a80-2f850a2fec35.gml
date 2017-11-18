/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 285C4600
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "-50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_player_damageControl"
with(other) {
obj_player_damageControl += -50;

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 77A4E105
instance_destroy();