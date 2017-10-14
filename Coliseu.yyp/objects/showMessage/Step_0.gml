/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 27A799B1
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "cf7a7c05-5215-4db2-8abf-f428ef2f9dd6"
var l27A799B1_0 = false;
l27A799B1_0 = instance_exists(obj_player);
if(l27A799B1_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 218B3152
	/// @DnDParent : 27A799B1
	/// @DnDArgument : "expr" "obj_player_diretion"
	/// @DnDArgument : "var" "direction1"
	direction1 = obj_player_diretion;
}