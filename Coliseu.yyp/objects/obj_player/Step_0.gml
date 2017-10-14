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
	/// @DnDArgument : "output" "obj_player_currentHp"
	/// @DnDArgument : "var" "obj_base_hp"
	obj_player_currentHp = global.obj_base_hp;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
	/// @DnDVersion : 1.1
	/// @DnDHash : 6D7FA5F2
	/// @DnDParent : 1CFE8CB6
	var l6D7FA5F2_0;
	l6D7FA5F2_0 = mouse_check_button_released(mb_left);
	if (l6D7FA5F2_0)
	{
	
	}
}

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 1480CAE0
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
direction = point_direction(x, y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 235625BB
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 02B407CA
/// @DnDArgument : "speed_relative" "1"
image_speed += 1;

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