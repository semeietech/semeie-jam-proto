// -- RESET VARIABLES
moveX = 0;
moveY = 0;

// -- INTENDED MOVEMENT
moveX = (inputRight - inputLeft) * spd;
moveY = (inputDown - inputUp) * spd;
moveAndCollide();

if (playerFollowMouse) {
	playerTowardsMouse();
}
else {
	playerTowardsIntendedMove();
}

spriteFlip();
