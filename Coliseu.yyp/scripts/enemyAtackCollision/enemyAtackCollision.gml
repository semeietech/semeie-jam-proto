var inst = collision_rectangle( x+60, y-99, x-60, y+21, obj_player, false, true);
if (inst != noone) {
	if (cooldown < 0) {
		with (inst) {
			currentHp -= 10;
			state = states.soak;
			var my_dir = point_direction (x,y, inst.x, inst.y)
			moveX = - lengthdir_x(spd, my_dir);
			moveY = - lengthdir_y(spd, my_dir);
		
		}
		cooldown = 60;
	}
	
}