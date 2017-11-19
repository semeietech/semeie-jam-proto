if (moveX > 0)
{
	playerDirection = directions.right;
	
} else if (moveX < 0)
{
	playerDirection = directions.left;
		
} else if (moveY > 0)
{
	playerDirection = directions.down;
} else if (moveY < 0)
{
	playerDirection = directions.up;
}