if(!place_meeting(colisionador.x, colisionador.y + (velocidad+3), obj_muro) and !place_meeting(colisionador.x, colisionador.y + (velocidad+3), obj_movible)){
	return 1;
}else{
	return 0;	
}