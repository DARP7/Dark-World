abajo = keyboard_check(ord("S"));
arriba = -keyboard_check(ord("W"));
izquierda = -keyboard_check(ord("A"));
derecha = keyboard_check(ord("D"));
esquivar = keyboard_check_pressed(ord("K"));

if(esquivar == 0 and estado != "esquivando"){//no esta esquivando y va a moverse
	if(abajo == 1 and arriba == 0){//se mueve abajo
		direccion = "abajo";
		estado = "moviendo";
		//show_debug_message("abajo = "+string(abajo)+" arriba = "+string(arriba)+" izquierda = "+string(izquierda)+" derecha = "+string(derecha));
		image_speed = velocidad_imagen;
		sprite = spr_heroe_camina_frente;
		//sprite_index = sprite;
		if(izquierda == -1 and arriba == 0 and derecha == 0){//se mueve abajo izquierda
			direccion = "abajo-izquierda";
			sprite = spr_heroe_camina_frente;
			sprite_index = sprite;
			return 0;
		}
		if(izquierda == 0 and arriba == 0 and derecha == 1){//se mueve abajo derecha
			direccion = "abajo-derecha";
			sprite = spr_heroe_camina_frente;
			sprite_index = sprite;
			return 0;
		}
		if(!scr_check_for_collision_down()){//checa si empuja hacia abajo----*************************
			if(pushing_counter < 1 and alarm[1] <= 0){
				alarm[1] = room_speed * 1;
				return 0;
			}
			if(pushing_counter == 1){
				estado = "empujando";
				sprite = spr_heroe_empujando_abajo;
				sprite_index = sprite;
				return 0;
			}
		}else{//*************************************************************************************
			show_debug_message("mmmmmmmm............");
			pushing_counter = 0;
			estado = "moviendo";
		}
		sprite_index = sprite;
		return 0;
	}
	if(arriba == -1 and abajo == 0 and estado != "empujando"){//se mueve arriba
		//show_debug_message("entre aqui");
		direccion = "arriba";
		estado = "moviendo";
		image_speed = velocidad_imagen;
		sprite = spr_heroe_camina_espalda;
		//sprite_index = sprite;
		if(izquierda == -1 and abajo == 0 and derecha == 0){//se mueve arriba izquierda
			direccion = "arriba-izquierda";
			sprite = spr_heroe_camina_espalda;
			sprite_index = sprite;
			return 0;
		}
		if(izquierda == 0 and abajo == 0 and derecha == 1){//se mueve arriba derecha
			direccion = "arriba-derecha";
			sprite = spr_heroe_camina_espalda;
			sprite_index = sprite;
			return 0;
		}
		if(!scr_check_for_collision_up()){//checa si empuja hacia arriba----*************************
			if(pushing_counter < 1 and alarm[1] <= 0){
				alarm[1] = room_speed * 1;
				return 0;
			}
			if(pushing_counter == 1){
				estado = "empujando";
				sprite = spr_heroe_empujando_arriba;
				sprite_index = sprite;
				return 0;
			}
		}else{//*************************************************************************************
			pushing_counter = 0;
			estado = "moviendo";
		}
		sprite_index = sprite;
		return 0;
	}
	if(izquierda == -1 and derecha == 0 and arriba == 0 and abajo == 0){//Se mueve izquierda
		direccion = "izquierda";
		estado = "moviendo";
		image_speed = velocidad_imagen;
		sprite = spr_heroe_camina_lado_v2;
		sprite_index = sprite;
		return 0;
	}
	if(derecha == 1 and izquierda == 0 and arriba == 0 and abajo == 0){//Se mueve derecha
		direccion = "derecha";
		estado = "moviendo";
		image_speed = velocidad_imagen;
		sprite = spr_heroe_camina_lado_v2;
		sprite_index = sprite;
		return 0;
	}
	if(abajo == 0 and arriba == 0 and izquierda == 0 and derecha == 0){//No se mueve a ningun lado y se queda parado
		/*if(audio_is_playing(global.sfx_index)){
			audio_stop_sound(global.sfx_index);
		}*/
		image_speed = 0;
		estado = "parado";
		if(direccion == "arriba" or direccion == "arriba-izquierda" or direccion == "arriba-derecha"){
			sprite = spr_heroe_camina_espalda;
			sprite_index = sprite;
			pushing_counter = 0;
		}
		if(direccion == "abajo" or direccion == "abajo-izquierda" or direccion == "abajo-derecha"){
			sprite = spr_heroe_camina_frente;
			sprite_index = sprite;
			pushing_counter = 0;
		}
		if(direccion == "derecha" or direccion == "izquierda"){
			sprite = spr_heroe_camina_lado_v2;
			sprite_index = sprite;
			pushing_counter = 0;
		}
		image_index = 0;
		return 0;
	}//**************************************************************************************************************
}else{//Esta esquivando
	if(esquivar and estado != "esquivando"){
		/*if(audio_is_playing(global.sfx_index)){
			audio_stop_sound(global.sfx_index);
		}*/
		if(direccion == "abajo" || direccion == "abajo-izquierda" || direccion == "abajo-derecha"){
			estado = "esquivando";
			image_speed = velocidad_imagen + 1 ;
			sprite = spr_heroe_esquivando_frente;
			sprite_index = sprite;
			pushing_counter = 0;
		}
		if(direccion == "arriba" || direccion == "arriba-izquierda" || direccion == "arriba-derecha"){
			estado = "esquivando";
			image_speed = velocidad_imagen + 1 ;
			sprite = spr_heroe_esquivando_espalda;
			sprite_index = sprite;
			pushing_counter = 0;
		}
		if(direccion == "izquierda" || direccion == "derecha"){
			estado = "esquivando";
			image_speed = velocidad_imagen + 1 ;
			sprite = spr_heroe_esquivando_lado;
			sprite_index = sprite;
			pushing_counter = 0;
		}
	}
}
