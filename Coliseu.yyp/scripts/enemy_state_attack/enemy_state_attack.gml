	var inst = collision_rectangle( x+60, y-99, x-60, y+21, obj_player, true, true);
	if (inst != noone) {
		if (cooldown <= 0){
			inst.currentHp -= 10;
			
		}
		
		with (inst) {
			state = states.soak;
			var my_dir = point_direction (x,y, inst.x, inst.y)
			moveX = - lengthdir_x(spd, my_dir);
			moveY = - lengthdir_y(spd, my_dir);
		
		}
		cooldown = 20;
	}

//Transition Triggers
if(image_index > image_number-1){ state = states.alert;}

//Sprite
sprite_index = spr_enemy;

cooldown -= 1;