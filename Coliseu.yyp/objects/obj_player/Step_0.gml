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
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BC90C4A
	/// @DnDParent : 0FBA3230
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_bullet"
	/// @DnDArgument : "layer" ""layer_bullet""
	/// @DnDSaveInfo : "objectid" "946a8fe3-1fdb-4f56-986b-5d7808e11eec"
	instance_create_layer(x, y, "layer_bullet", obj_bullet);
}
