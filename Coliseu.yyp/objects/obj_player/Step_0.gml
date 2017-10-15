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
	/// @DnDArgument : "expr" ""RIGHT""
	/// @DnDArgument : "var" "obj_player_direction"
	obj_player_direction = "RIGHT";
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
	/// @DnDArgument : "expr" ""RIGHT""
	/// @DnDArgument : "var" "obj_player_direction"
	obj_player_direction = "RIGHT";
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
		/// @DnDArgument : "expr" ""UP""
		/// @DnDArgument : "var" "obj_player_direction"
		obj_player_direction = "UP";
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
		/// @DnDArgument : "expr" ""LEFT""
		/// @DnDArgument : "var" "obj_player_direction"
		obj_player_direction = "LEFT";
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
		/// @DnDArgument : "expr" ""DOWN""
		/// @DnDArgument : "var" "obj_player_direction"
		obj_player_direction = "DOWN";
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 0FBA3230
/// @DnDArgument : "button" "mb_right"
var l0FBA3230_0;
l0FBA3230_0 = mouse_check_button(mb_right);
if (l0FBA3230_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 101265BB
	/// @DnDParent : 0FBA3230
	/// @DnDArgument : "var" "obj_player_action"
	/// @DnDArgument : "value" ""MELEE""
	if(obj_player_action == "MELEE")
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4E54814A
		/// @DnDParent : 101265BB
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "y"
		/// @DnDArgument : "objectid" "obj_sword"
		/// @DnDArgument : "layer" ""layer_bullet""
		/// @DnDSaveInfo : "objectid" "1f7c5d9b-a21b-416a-b64a-8042243c8a29"
		instance_create_layer(x, y, "layer_bullet", obj_sword);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 29EEA1A7
		/// @DnDParent : 101265BB
		/// @DnDArgument : "expr" "5"
		/// @DnDArgument : "var" "obj_player_stamina"
		obj_player_stamina = 5;
	}

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
		/// @DnDArgument : "expr" "10"
		/// @DnDArgument : "var" "obj_player_cooldown"
		obj_player_cooldown = 10;
	}
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 69968DF0
/// @DnDInput : 2
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "1"
/// @DnDArgument : "var" "obj_player_cooldown"
/// @DnDArgument : "var_1" "obj_player_stamina"
obj_player_cooldown += -1;
obj_player_stamina = 1;

/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 34B6D56B
/// @DnDInput : 3
/// @DnDArgument : "assignee" "isIdle"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "assignee_1" "isWalk"
/// @DnDArgument : "assignee_temp_1" "1"
/// @DnDArgument : "assignee_2" "isRuning"
/// @DnDArgument : "assignee_temp_2" "1"
/// @DnDArgument : "var" "obj_player_action"
/// @DnDArgument : "key" ""IDLE""
/// @DnDArgument : "key_1" ""WALK""
/// @DnDArgument : "key_2" ""RUN""
var isIdle = ds_map_find_value(obj_player_action, "IDLE");
var isWalk = ds_map_find_value(obj_player_action, "WALK");
var isRuning = ds_map_find_value(obj_player_action, "RUN");

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 13E1A3E1
/// @DnDArgument : "var" "isIdle"
/// @DnDArgument : "value" "true"
if(isIdle == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 18833C03
	/// @DnDParent : 13E1A3E1
	/// @DnDArgument : "expr" ""IDLE""
	/// @DnDArgument : "var" "obj_player_currentAction"
	obj_player_currentAction = "IDLE";

	/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 4E1AE048
	/// @DnDParent : 13E1A3E1
	/// @DnDArgument : "speed" "12"
	image_speed = 12;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5BAE6D96
/// @DnDArgument : "var" "isWalk"
/// @DnDArgument : "value" "true"
if(isWalk == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46427B0F
	/// @DnDParent : 5BAE6D96
	/// @DnDArgument : "expr" ""WALK""
	/// @DnDArgument : "var" "obj_player_currentAction"
	obj_player_currentAction = "WALK";

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C7094CB
	/// @DnDParent : 5BAE6D96
	/// @DnDArgument : "var" "isRuning"
	/// @DnDArgument : "value" "true"
	if(isRuning == true)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 22B68A9E
		/// @DnDParent : 0C7094CB
		/// @DnDArgument : "speed" "8"
		image_speed = 8;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 7779677B
	/// @DnDParent : 5BAE6D96
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1F79D0C2
		/// @DnDParent : 7779677B
		/// @DnDArgument : "speed" "15"
		image_speed = 15;
	}
}

/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 2F353E1F
/// @DnDArgument : "assignee" "spritesAction"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "obj_player_sprites"
/// @DnDArgument : "key" "obj_player_currentAction"
var spritesAction = ds_map_find_value(obj_player_sprites, obj_player_currentAction);

/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 726327C0
/// @DnDArgument : "assignee" "obj_player_currentSprite"
/// @DnDArgument : "var" "spritesAction"
/// @DnDArgument : "key" "obj_player_direction"
obj_player_currentSprite = ds_map_find_value(spritesAction, obj_player_direction);

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 2A8BF1D6
/// @DnDArgument : "imageind" "+1"
/// @DnDArgument : "imageind_relative" "1"
/// @DnDArgument : "spriteind" "obj_player_currentSprite"
sprite_index = obj_player_currentSprite;
image_index += +1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3B9DC398
/// @DnDArgument : "var" "obj_player_direction"
/// @DnDArgument : "value" ""RIGHT""
if(obj_player_direction == "RIGHT")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29E2000F
	/// @DnDParent : 3B9DC398
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 110A84CF
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1FDAF738
	/// @DnDParent : 110A84CF
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 1;
}