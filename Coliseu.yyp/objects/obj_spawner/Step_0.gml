var dif_dummy = dummy_counter - dummy_active;
if(	dif_dummy != 0)
{
	repeat(dif_dummy){
	instance_create_layer(random_range( 100,  1800), random_range( 110,  1000),"layer_player", obj_enemy);
	}
}
if(instance_exists(obj_enemy)){
	with(obj_enemy){
	obj_spawner.dummy_active = instance_count-10;

}
}
else{
	dummy_active = 0
}