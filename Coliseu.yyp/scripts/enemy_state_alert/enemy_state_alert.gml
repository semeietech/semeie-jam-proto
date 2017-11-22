my_dir = point_direction (x,y, obj_player.x, obj_player.y)
moveX = lengthdir_x(spd, my_dir);
moveY = lengthdir_y(spd, my_dir);
moveAndCollide();
		
//Transition Triggers
if(!collision_circle(x,y, 94, obj_player, false, false)){
	state = states.idle;
}

if(collision_circle(x,y, 64, obj_player, false, false)){
	state= states.charge;
}

if (collision_circle(x,y, 32, obj_player, false, false)){
	state = states.attack;
}
		
//Sprite
sprite_index = spr_enemy_idle;
image_xscale = sign(-1*moveX);