counter += 1;
		
//Transitions Triggers
if (counter >= room_speed * 3){
	var change = choose(0,1,2);
	switch(change){
		case 0: state = states.wander;
		case 1: counter = 0; break;
		case 2: state = states.charge;
	}
}
if(collision_circle(x,y, 194, obj_player, false, false)){
	state = states.alert;
}
		
//Sprite
sprite_index = spr_enemy_idle;