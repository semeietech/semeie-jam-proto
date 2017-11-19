if (inputDown || inputLeft || inputRight || inputUp )
{
	state = states.walk;
}

if (inputPrimaryAction && cooldown <= 0)
{
	state = states.attack;
}
