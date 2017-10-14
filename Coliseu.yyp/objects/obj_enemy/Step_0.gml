/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 06C1CD98
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "cf7a7c05-5215-4db2-8abf-f428ef2f9dd6"
var l06C1CD98_0 = false;
l06C1CD98_0 = instance_exists(obj_player);
if(l06C1CD98_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 228B1E80
	/// @DnDParent : 06C1CD98
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "3"
	if(hp <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5A81FF55
		/// @DnDParent : 228B1E80
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5E61F82A
		/// @DnDParent : 228B1E80
		/// @DnDArgument : "xpos" "random(window_get_width())"
		/// @DnDArgument : "ypos" "random(window_get_height())"
		/// @DnDArgument : "objectid" "obj_enemy"
		/// @DnDArgument : "layer" ""layer_player""
		/// @DnDSaveInfo : "objectid" "3280858b-4b08-424b-93f9-36fe816680b3"
		instance_create_layer(random(window_get_width()), random(window_get_height()), "layer_player", obj_enemy);
	}
}