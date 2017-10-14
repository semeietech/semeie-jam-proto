<<<<<<< HEAD
/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 226B9556
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "cf7a7c05-5215-4db2-8abf-f428ef2f9dd6"
var l226B9556_0 = false;
l226B9556_0 = instance_exists(obj_player);
if(l226B9556_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E1E4178
	/// @DnDParent : 226B9556
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "3"
	if(hp <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3C17044F
		/// @DnDParent : 6E1E4178
		instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6894FFEA
		/// @DnDParent : 6E1E4178
		/// @DnDArgument : "xpos" "random(window_get_width())"
		/// @DnDArgument : "ypos" "random(window_get_height())"
		/// @DnDArgument : "objectid" "obj_enemy"
		/// @DnDArgument : "layer" ""layer_player""
		/// @DnDSaveInfo : "objectid" "3280858b-4b08-424b-93f9-36fe816680b3"
		instance_create_layer(random(window_get_width()), random(window_get_height()), "layer_player", obj_enemy);
	}
=======
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 228B1E80
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5A81FF55
	/// @DnDParent : 228B1E80
	instance_destroy();
>>>>>>> 6378c9719fe5efe6e075c8994cb5a41fbd46f372
}