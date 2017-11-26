if (playerDirection == directions.left)
{
	moveX = -2;
	moveY = 0; 
	
	rectX1 = x - 75;
	rectY1 = y - 80;
	rectX2 = x - 15;
	rectY2 = y;

} else if (playerDirection == directions.right)
{
	moveX = 2;
	moveY = 0;
	
	rectX1 = x + 75;
	rectY1 = y - 80;
	rectX2 = x + 15;
	rectY2 = y;

} else if (playerDirection == directions.up)
{
	moveX = 0;
	moveY = -2;
	
	rectX1 = x - 50;
	rectY1 = y - 55;
	rectX2 = x + 50;
	rectY2 = y - 110;

} else if (playerDirection == directions.down)
{
	moveX = 0;
	moveY = 2;
	
	rectX1 = x - 50;
	rectY1 = y;
	rectX2 = x + 50;
	rectY2 = y + 55;

}

moveAndCollide();

var inst = collision_rectangle(rectX1, rectY1, rectX2, rectY2, obj_enemy, false, true);
if (inst != noone) {
	var soakX = 2 * moveX;
	var soakY = 2 * moveY;
    if (cooldown <= 0) {
		with(inst){
			currentHp -= 1;
			counter = 0;
			state = states.soak;
			moveX = soakX;
			moveY = soakY;
		}
	}

}

cooldown = 20;

//Transition Triggers
if(image_index > image_number-1){ state = states.idle;}
