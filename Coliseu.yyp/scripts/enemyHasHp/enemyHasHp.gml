if(currentHp <= 0)
{
	instance_destroy();
		with(obj_player){
			death_dummy += 1;		
		}
}
