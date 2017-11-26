var inst = collision_rectangle( x+60, y-99, x-60, y+21, obj_player, false, true);
var myX = x;
var myY = y;
if (inst != noone) {
	if (cooldown < 0) {
		with (inst) {
			currentHp -= 10;
			state = states.soak;
			var my_dir = point_direction (myX,myY, x, y)
			moveX = lengthdir_x(2, my_dir);
			moveY = lengthdir_y(2, my_dir);
			moveAndCollide();
		}
		var myOther_dir = point_direction (inst.x, inst.y, myX, myY)
		moveX = lengthdir_x(5, myOther_dir);
		moveY = lengthdir_y(5, myOther_dir);
		moveAndCollide();
		state = states.attack;
		cooldown = 60;
	}
	
}