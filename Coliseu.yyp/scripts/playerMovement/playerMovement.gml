// -- RESET VARIABLES
moveX = 0;
moveY = 0;

// -- INTENDED MOVEMENT
moveX = (inputRight - inputLeft) * spd;
moveY = (inputDown - inputUp) * spd;
 
//if (COLLISION) {

//}

// -- APPLY MOVEMENT
x += moveX;
y += moveY;

if (playerFollowMouse) {
	playerTowardsMouse();
}
else {
	playerTowardsIntendedMove();
}

spriteFlip();
