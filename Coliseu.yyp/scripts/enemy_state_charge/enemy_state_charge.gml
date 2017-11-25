moveX = lengthdir_x(spd_charge, my_dir);
moveY = lengthdir_y(spd_charge, my_dir);
if (image_index > 2 and image_index < 6) {
	enemyAtackCollision();
}
moveAndCollide();
//Transition Triggers
if(image_index > image_number-1){ state = states.alert;}

//Sprite
sprite_index = spr_enemy;

