//draw_self();
draw_text(x - 60, y, string(currentHp));
if(state == states.soak) {
	shader_set(fullWhite);
	draw_self();
	shader_reset();
}