if (cooldown <= 0){
	if (instance_place(x, y, obj_enemy)) {
		obj_player.currentHp -= 10;
		obj_enemy_cooldown = 20;
	}
}

//Transition Triggers
if(image_index > image_number-1){ state = states.idle;}
