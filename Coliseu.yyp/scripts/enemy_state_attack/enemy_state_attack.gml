
		//
		if (obj_enemy_cooldown <= 0){	
			if (instance_place(x, y, obj_player)) {
				obj_player.obj_player_currentHp -= 10;
				obj_enemy_cooldown = 100;
			}
		}
		if(image_index > image_number-1){ state = states.alert;}
	//Transition Triggers
	
	show_debug_message(obj_player.obj_player_currentHp)

	//Sprite
	sprite_index = spr_enemy;
	obj_enemy_cooldown -= 1 ;