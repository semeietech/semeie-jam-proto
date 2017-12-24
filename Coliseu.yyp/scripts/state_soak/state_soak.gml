moveAndCollide();

counter += 1;
if (counter == 10)
{
	state = states.idle;
	counter = 0;
}
