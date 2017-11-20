draw_set_alpha(0.3);
draw_set_circle_precision(32);
if (instance_exists(obj_enemy)) {
	draw_circle_colour(obj_enemy.x, obj_enemy.y, 194, c_aqua, c_aqua, false);
	draw_circle_colour(obj_enemy.x, obj_enemy.y, 134, c_white, c_white, false);
	draw_circle_colour(obj_enemy.x, obj_enemy.y, 94, c_yellow, c_yellow, false);
	draw_circle_colour(obj_enemy.x, obj_enemy.y, 64, c_orange, c_orange, false);
	draw_circle_colour(obj_enemy.x, obj_enemy.y, 32, c_red, c_red, false);
}


if (instance_exists(obj_player)) {
	if (obj_player.playerDirection == directions.left)
	{
		rectX1 = obj_player.x - 75;
		rectY1 = obj_player.y - 80;
		rectX2 = obj_player.x - 15;
		rectY2 = obj_player.y;
	} else if (obj_player.playerDirection == directions.right)
	{
		rectX1 = obj_player.x + 75;
		rectY1 = obj_player.y - 80;
		rectX2 = obj_player.x + 15;
		rectY2 = obj_player.y;
	} else if (obj_player.playerDirection == directions.up)
	{
		rectX1 = obj_player.x - 50;
		rectY1 = obj_player.y - 55;
		rectX2 = obj_player.x + 50;
		rectY2 = obj_player.y - 110;

	} else if (obj_player.playerDirection == directions.down)
	{
		rectX1 = obj_player.x - 50;
		rectY1 = obj_player.y;
		rectX2 = obj_player.x + 50;
		rectY2 = obj_player.y + 55;

	}
	draw_set_colour(c_yellow);
	draw_rectangle(rectX1, rectY1, rectX2, rectY2, false);
}

draw_set_alpha(1);