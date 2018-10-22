
if(!place_meeting(movible.sensor.x + 46, movible.sensor.y, obj_muro)){
	//show_debug_message("pase esta prueba");
	if(!place_meeting(movible.sensor_lado.x + movible.sprite_width + 1, movible.sensor.y , obj_movible)){
		return 1;
	}else{
		//show_debug_message("hay colision con movible");
		return 0;	
	}
	//show_debug_message("no hay colision");
}else{
	//show_debug_message("hay colision");
	//show_debug_message("hay colision con muro");
	return 0;	
}