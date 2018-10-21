
if(!place_meeting(movible.x, movible.y + 1, obj_muro)){
	show_debug_message("pase esta prueba");
	if(!place_meeting(movible.x, movible.y + (movible.sprite_height/ 2 +movible.sprite_height/ 3), obj_movible)){
		return 1;
	}else{
		show_debug_message("hay colision con movible");
		return 0;	
	}
	//show_debug_message("no hay colision");
}else{
	//show_debug_message("hay colision");
	show_debug_message("hay colision con muro");
	return 0;	
}