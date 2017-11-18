

if (state == states.idle){
		#region Idle
		
		//Behaviour
		counter += 1;
		
		//Transitions Triggers
		if (counter >= room_speed * 3){
			var change = choose(0,1);
			switch(change){
				case 0: state = states.wander;
				case 1: counter =0; break;
			}
		}
		if(collision_circle(x,y, 64, obj_player, true, true)){
			state = states.alert;
		}
		
		//Sprite
		sprite_index = spr_enemy_idle;
		#endregion
}

else if(state == states.wander){
		#region Wander
		//Behaviour
		counter += 1;
		x += moveX;
		y += moveY;
		
		//transition triggers
		if(counter >= room_speed * 3){
			var change = choose(0,1);
			switch(change){
				case 0: state = states.idle;
				case 1:
					my_dir = irandom_range(0, 359);
					moveX = lengthdir_x(spd, my_dir);
					moveY = lengthdir_y(spd, my_dir);
					counter = 0;
			}
		}
		if(collision_circle(x,y, 64, obj_player, false, false)){
			state = states.alert;
		}
		
		//Sprite
		sprite_index = spr_enemy_idle;
		image_xscale = sign(moveX);		
		#endregion
}

else if(state == states.alert){
		#region Alert
		//Behaviour
		my_dir = point_direction (x,y, obj_player.x, obj_player.y)
		moveX = lengthdir_x(spd, my_dir);
		moveY = lengthdir_y(spd, my_dir);
		x +=moveX;
		y +=moveY;
		
		//Transition Triggers
		if(!collision_circle(x,y, 64, obj_player, true,true)){
				state = states.idle;
		}
		if ( collision_circle(x,y, 32, obj_player, true,true)){
				state = states.attack;
				}
		
		//Sprite
		sprite_index = spr_enemy_idle;
		image_xscale = sign(moveX);
		#endregion
			
		}
		
else if (state == states.attack){
	#region Attack
	//if(my_slash == noone){
		my_slash = instance_create_layer(
			x + image_xscale*16,y,"Instances", obj_slash
			);
			my_slash.creator = id;
			my_slash.image_xscale = image_xscale;
			image_index = 0;
		//}
		
	//Transition Triggers
	if(image_index >image_number-1){ state = states.alert;}
	
	//Sprite
	sprite_index = spr_enemy;
	#endregion
 }
	





