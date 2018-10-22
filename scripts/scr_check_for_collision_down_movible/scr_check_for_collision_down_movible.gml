
if(!place_meeting(movible.sensor.x, movible.sensor.y + movible.sprite_height + 1, obj_muro)){
	//show_debug_message("pase esta prueba");
	if(!place_meeting(movible.sensor.x, movible.sensor.y - movible.sprite_height + (velocidad + 3), obj_movible)){
		return 1;
	}else{
		show_debug_message("hay colision con movible");
		return 0;	
	}
	//show_debug_message("no hay colision");
}else{
	//show_debug_message("hay colision");
	//show_debug_message("hay colision con muro");
	return 0;	
}