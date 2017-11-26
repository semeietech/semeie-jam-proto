if(counter%50 == 0){
	shader_set(fullWhite);
			draw_sprite(vida_espada,current_frame,x,y)
				shader_reset();
}
else{ 
				draw_sprite(vida_espada,current_frame,x,y)
			
			}

if(current_frame != target_frame){
	state = states.damaged;
	
	}
	
	if(current_frame < 33){
	state = states.static;

}
  
counter += 1;
	
