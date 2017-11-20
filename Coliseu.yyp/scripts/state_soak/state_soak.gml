x += moveX;
y += moveY;

counter += 1;
if (counter == 25)
{
	state = states.idle;
	counter = 0;
}
