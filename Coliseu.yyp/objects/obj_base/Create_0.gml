run = 2;
hit = 10;
hp = 100;
spd = 4;
counter = 0;
state = states.idle;

enum states{
	idle,
	wander,
	alert,
	attack,
	charge,
	walk,
	soak,
}

enum directions{
	left,
	right,
	down,
	up,
}