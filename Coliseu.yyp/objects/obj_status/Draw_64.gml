//INCREMENT FOR ANIMATION
get_target_frame();

	
	
script_execute(state_array[state]);

if (state == states.static){
		    script_execute(state_array[states.static]);
}

if(state == states.damaged){
			script_execute(state_array[states.damaged]);
}

if(state == states.danger){
			script_execute(state_array[states.danger]);
				
}
else{
	draw_sprite(vida_espada,current_frame,x,y)

}



