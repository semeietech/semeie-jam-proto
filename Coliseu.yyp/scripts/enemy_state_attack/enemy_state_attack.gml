if (cooldown <= 0){
	if (instance_place(x, y, obj_player)) {
		obj_player.currentHp -= 10;
		cooldown = 20;
	}
}

//Transition Triggers
if(image_index > image_number-1){ state = states.alert;}

//Sprite
sprite_index = spr_enemy;

cooldown -= 1;