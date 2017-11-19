if(direction < 45)
{
	playerDirection = directions.left;
}

if(direction >= 315)
{	
	playerDirection = directions.right;
}

if(direction < 135)
{
	if(direction >= 45)
	{
		playerDirection = directions.up;
	}
}

if(direction < 225)
{
	if(direction >= 135)
	{	
		playerDirection = directions.left;
	}
}

if(direction < 315)
{
	if(direction >= 225)
	{	
		playerDirection = directions.down;
	}
}
