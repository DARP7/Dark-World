
/*if(!place_meeting(movible.sensor.x, movible.sensor.y + movible.sprite_height + 1, obj_muro)){
	show_debug_message("pase esta prueba");
	if(!place_meeting(movible.sensor.x, movible.sensor.y - movible.sprite_height + 1, obj_movible)){
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
*/
if(place_meeting(colisionador.x - (velocidad + 10), colisionador.y, obj_movible)){
	return 1;
}else{
	//show_debug_message("x heroe trasladado: "+string(colisionador.x - (velocidad + 10)));
	//show_debug_message("x movible: "+string(movible.x)+ " ancho movible: "+string(movible.sprite_width));
	return 0;
}