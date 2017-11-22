
		counter += 1;
		moveAndCollide();
		
		//transition triggers
		if(counter >= room_speed * 3){
			var change = choose(0,1);
			switch(change) {
				case 0: state = states.idle;
				case 1:
					my_dir = irandom_range(0, 359);
					moveX = lengthdir_x(spd, my_dir);
					moveY = lengthdir_y(spd, my_dir);
					counter = 0;
			}
		}
		
		if(collision_circle(x,y, 134, obj_player, false, false)){
			state = states.alert;
		}
		
		//Sprite
		sprite_index = spr_enemy_idle;
		image_xscale = sign(-1*moveX);		