/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 1CFE8CB6
/// @DnDArgument : "obj" "obj_base"
/// @DnDSaveInfo : "obj" "a126d7c2-8684-45ef-b005-bc2f63df1d58"
var l1CFE8CB6_0 = false;
l1CFE8CB6_0 = instance_exists(obj_base);
if(l1CFE8CB6_0)
{
	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 08919AD8
	/// @DnDParent : 1CFE8CB6
	/// @DnDArgument : "output" "obj_player_baseWalk"
	/// @DnDArgument : "var" "obj_base_walk"
	obj_player_baseWalk = global.obj_base_walk;

	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 57AEC2C4
	/// @DnDParent : 1CFE8CB6
	/// @DnDArgument : "output" "obj_player_baseRun"
	/// @DnDArgument : "var" "obj_base_run"
	obj_player_baseRun = global.obj_base_run;

	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 5BCAAD16
	/// @DnDParent : 1CFE8CB6
	/// @DnDArgument : "output" "obj_player_baseHit"
	/// @DnDArgument : "var" "obj_base_hit"
	obj_player_baseHit = global.obj_base_hit;

	/// @DnDAction : YoYo Games.Common.Get_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7A395700
	/// @DnDParent : 1CFE8CB6
	/// @DnDArgument : "output" "obj_player_baseHp"
	/// @DnDArgument : "var" "obj_base_hp"
	obj_player_baseHp = global.obj_base_hp;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 556962B2
	/// @DnDParent : 1CFE8CB6
	/// @DnDArgument : "expr" "obj_player_baseHp + obj_player_damageControl"
	/// @DnDArgument : "var" "obj_player_currentHp"
	obj_player_currentHp = obj_player_baseHp + obj_player_damageControl;
}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1480CAE0
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 02B407CA
/// @DnDArgument : "speed_relative" "1"
image_speed += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 517ACF14
/// @DnDArgument : "var" "obj_player_currentHp"
/// @DnDArgument : "op" "3"
if(obj_player_currentHp <= 0)
{
	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
	/// @DnDVersion : 1
	/// @DnDHash : 23653F76
	/// @DnDParent : 517ACF14
	/// @DnDArgument : "sound" "sound0"
	/// @DnDArgument : "pitch" "random_range(0.8 , 1.2)"
	/// @DnDSaveInfo : "sound" "b1ae7707-8888-4c21-8099-6035997549c9"
	audio_sound_pitch(sound0, random_range(0.8 , 1.2));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 60F44565
	/// @DnDParent : 517ACF14
	/// @DnDArgument : "soundid" "sound0"
	/// @DnDSaveInfo : "soundid" "b1ae7707-8888-4c21-8099-6035997549c9"
	audio_play_sound(sound0, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7C3BE4C5
	/// @DnDParent : 517ACF14
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E780704
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "45"
if(direction < 45)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44F6635F
	/// @DnDParent : 5E780704
	/// @DnDArgument : "expr" ""DIREITA""
	/// @DnDArgument : "var" "obj_player_direction"
	obj_player_direction = "DIREITA";

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 54993BDF
	/// @DnDParent : 5E780704
	/// @DnDArgument : "msg" "string(obj_player_direction)"
	show_debug_message(string(string(obj_player_direction)));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 200EE08D
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "315"
if(direction >= 315)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6DC2B7FA
	/// @DnDParent : 200EE08D
	/// @DnDArgument : "expr" ""DIREITA""
	/// @DnDArgument : "var" "obj_player_direction"
	obj_player_direction = "DIREITA";

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 051853CE
	/// @DnDParent : 200EE08D
	/// @DnDArgument : "msg" "string(obj_player_direction)"
	show_debug_message(string(string(obj_player_direction)));
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 340881FC
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "135"
if(direction < 135)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30DDD9B4
	/// @DnDParent : 340881FC
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "45"
	if(direction >= 45)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D7B3BE0
		/// @DnDParent : 30DDD9B4
		/// @DnDArgument : "expr" ""CIMA""
		/// @DnDArgument : "var" "obj_player_direction"
		obj_player_direction = "CIMA";
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 4757BD5C
		/// @DnDParent : 30DDD9B4
		/// @DnDArgument : "msg" "string(obj_player_direction)"
		show_debug_message(string(string(obj_player_direction)));
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6F25350D
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "225"
if(direction < 225)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CB52378
	/// @DnDParent : 6F25350D
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "135"
	if(direction >= 135)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29898194
		/// @DnDParent : 1CB52378
		/// @DnDArgument : "expr" ""ESQUERDA""
		/// @DnDArgument : "var" "obj_player_direction"
		obj_player_direction = "ESQUERDA";
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 0080C594
		/// @DnDParent : 1CB52378
		/// @DnDArgument : "msg" "string(obj_player_direction)"
		show_debug_message(string(string(obj_player_direction)));
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AC304A7
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "315"
if(direction < 315)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 209BA4F7
	/// @DnDParent : 1AC304A7
	/// @DnDArgument : "var" "direction"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "225"
	if(direction >= 225)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4AF24126
		/// @DnDParent : 209BA4F7
		/// @DnDArgument : "expr" ""BAIXO""
		/// @DnDArgument : "var" "obj_player_direction"
		obj_player_direction = "BAIXO";
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 50E4818D
		/// @DnDParent : 209BA4F7
		/// @DnDArgument : "msg" "string(obj_player_direction)"
		show_debug_message(string(string(obj_player_direction)));
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 0FBA3230
var l0FBA3230_0;
l0FBA3230_0 = mouse_check_button(mb_left);
if (l0FBA3230_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2481F66B
	/// @DnDParent : 0FBA3230
	/// @DnDArgument : "var" "obj_player_cooldown"
	/// @DnDArgument : "op" "3"
	if(obj_player_cooldown <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7BC90C4A
		/// @DnDParent : 2481F66B
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_bullet"
		/// @DnDArgument : "layer" ""layer_bullet""
		/// @DnDSaveInfo : "objectid" "946a8fe3-1fdb-4f56-986b-5d7808e11eec"
		instance_create_layer(x, y, "layer_bullet", obj_bullet);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69C1B922
		/// @DnDParent : 2481F66B
		/// @DnDArgument : "expr" "3"
		/// @DnDArgument : "var" "obj_player_cooldown"
		obj_player_cooldown = 3;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69968DF0
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_player_cooldown"
obj_player_cooldown += -1;