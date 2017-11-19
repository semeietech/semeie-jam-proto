if (playerDirection == directions.left)
{
	moveX = -2;
	moveY = 0;
} else if (playerDirection == directions.right)
{
	moveX = 2;
	moveY = 0;
} else if (playerDirection == directions.up)
{
	moveX = 0;
	moveY = -2;
} else if (playerDirection == directions.down)
{
	moveX = 0;
	moveY = 2;
}
x += moveX;
y += moveY;

var inst = instance_place(x, y, obj_enemy);
if (inst != noone) {
	if (inst) {
		inst.currentHp -= 10;
		cooldown = 20;
	}
}
cooldown = 20;
	

//Transition Triggers
if(image_index > image_number-1){ state = states.idle;}
