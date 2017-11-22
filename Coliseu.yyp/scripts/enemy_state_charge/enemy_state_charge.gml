moveX = lengthdir_x(spd_charge, my_dir);
moveY = lengthdir_y(spd_charge, my_dir);
moveAndCollide();

//Transition Triggers
if(image_index > image_number-1){ state = states.alert;}

//Sprite
sprite_index = spr_enemy;

