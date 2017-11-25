var hp 

with(obj_player){
	hp = currentHp;
}
if (hp > 89 and hp < 100){
		target_frame = 4;
	}
	else if(hp < 90) {
		target_frame = 9;
	}
	else if(hp < 80) {
		target_frame = 13;
	}
	else if(hp < 70) {
		target_frame = 17;
	}
	else if(hp < 60) {
		target_frame = 21;
	}
	else if(hp < 50) {
		target_frame = 25;
	}
	else if(hp < 40) {
		target_frame = 29;
	}
	else if (hp < 30){
		target_frame = 33;
	}
	else if (hp < 20){
		target_frame = 37;
	}
	else if (hp == 10){
		target_frame = 41;
	}
	else if (hp == 0){
		game_restart();
	}