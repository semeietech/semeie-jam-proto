playerMovement();

if (moveX == 0 && moveY == 0)
{
	state = states.idle;
}

if (inputPrimaryAction && cooldown <= 0)
{
	state = states.attack;
}