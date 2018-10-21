if(!place_meeting(colisionador.x - (velocidad+6), colisionador.y, obj_muro) and !place_meeting(colisionador.x - (velocidad+6), colisionador.y, obj_movible)){
	return 1;
}else{
	return 0;	
}