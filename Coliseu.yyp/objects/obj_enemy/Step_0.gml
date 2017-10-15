/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 06C1CD98
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "cf7a7c05-5215-4db2-8abf-f428ef2f9dd6"
var l06C1CD98_0 = false;
l06C1CD98_0 = instance_exists(obj_player);
if(l06C1CD98_0)
{

}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0869F90E
/// @DnDArgument : "obj" "obj_base"
/// @DnDSaveInfo : "obj" "a126d7c2-8684-45ef-b005-bc2f63df1d58"
var l0869F90E_0 = false;
l0869F90E_0 = instance_exists(obj_base);
if(l0869F90E_0)
{
	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 40B3EDEB
	/// @DnDParent : 0869F90E
	/// @DnDArgument : "output" "obj_enemy_baseWalk"
	/// @DnDArgument : "var" "obj_base_walk"
	obj_enemy_baseWalk = global.obj_base_walk;

	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3EC140A0
	/// @DnDParent : 0869F90E
	/// @DnDArgument : "output" "obj_enemy_baseRun"
	/// @DnDArgument : "var" "obj_base_run"
	obj_enemy_baseRun = global.obj_base_run;

	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 47A49589
	/// @DnDParent : 0869F90E
	/// @DnDArgument : "output" "obj_enemy_baseHit"
	/// @DnDArgument : "var" "obj_base_hit"
	obj_enemy_baseHit = global.obj_base_hit;

	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 601C8893
	/// @DnDParent : 0869F90E
	/// @DnDArgument : "output" "obj_enemy_currentHp"
	/// @DnDArgument : "var" "obj_base_hp"
	obj_enemy_currentHp = global.obj_base_hp;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
	/// @DnDVersion : 1.1
	/// @DnDHash : 2B92AED4
	/// @DnDParent : 0869F90E
	var l2B92AED4_0;
	l2B92AED4_0 = mouse_check_button_released(mb_left);
	if (l2B92AED4_0)
	{
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 228B1E80
	/// @DnDParent : 0869F90E
	/// @DnDArgument : "var" "obj_enemy_currentHp"
	/// @DnDArgument : "op" "3"
	if(obj_enemy_currentHp <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
		/// @DnDVersion : 1
		/// @DnDHash : 5CA0D9E1
		/// @DnDParent : 228B1E80
		/// @DnDArgument : "sound" "sound0"
		/// @DnDArgument : "pitch" "random_range(0.8 , 1.2)"
		/// @DnDSaveInfo : "sound" "b1ae7707-8888-4c21-8099-6035997549c9"
		audio_sound_pitch(sound0, random_range(0.8 , 1.2));
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 0007A2CE
		/// @DnDParent : 228B1E80
		/// @DnDArgument : "soundid" "sound0"
		/// @DnDSaveInfo : "soundid" "b1ae7707-8888-4c21-8099-6035997549c9"
		audio_play_sound(sound0, 0, 0);
	
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