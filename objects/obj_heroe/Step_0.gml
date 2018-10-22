/// @description Insert description here
// You can write your code in this editor
if(!global.is_paused){
	
	if(direccion == "izquierda" /*or direccion == "abajo-izquierda" or direccion == "arriba-izquierda"*/){
		image_xscale = -1;
	}else{
		image_xscale = 1;	
	}
	//seconds_passed = delta_time/1000000;
	//move_speed_this_frame = velocidad*seconds_passed;
	//show_debug_message(direccion);
	if(estado == "moviendo"){
		if(direccion == "abajo" and scr_check_for_collision_down() ){
			y += velocidad;
			colisionador.y += velocidad;
		}
		if(direccion == "abajo-izquierda" and scr_check_for_collision_down() and scr_check_for_collision_left() ){
			y += velocidad_diagonal;
			x -= velocidad_diagonal;
		
			colisionador.y += velocidad_diagonal;
			colisionador.x -= velocidad_diagonal;
		}
		if(direccion == "abajo-derecha" and scr_check_for_collision_down() and scr_check_for_collision_right() ){
			y += velocidad_diagonal;
			x += velocidad_diagonal;
		
			colisionador.y += velocidad_diagonal;
			colisionador.x += velocidad_diagonal;
		}
		if(direccion == "arriba" and scr_check_for_collision_up()){
			y -= velocidad;
			colisionador.y -= velocidad;
		}
		if(direccion == "arriba-izquierda" and scr_check_for_collision_up() and scr_check_for_collision_left() ){
			y -= velocidad_diagonal;
			x -= velocidad_diagonal;
		
			colisionador.y -= velocidad_diagonal;
			colisionador.x -= velocidad_diagonal;
		}
		if(direccion == "arriba-derecha" and scr_check_for_collision_up() and scr_check_for_collision_right() ){
			y -= velocidad_diagonal;
			x += velocidad_diagonal;
		
			colisionador.y -= velocidad_diagonal;
			colisionador.x += velocidad_diagonal;
		}
		if(direccion == "izquierda" and scr_check_for_collision_left() ){
			x -= velocidad;
			colisionador.x -= velocidad;
		}
		if(direccion == "derecha" and scr_check_for_collision_right() ){
			x += velocidad;
			colisionador.x += velocidad;
		}
	}
	if(estado == "esquivando"){
		if(direccion == "abajo"){
			if(image_index >= 10 and alarm[0] <= 0 and estado == "esquivando"){
				alarm[0] = 5;
				image_speed = 0;
				//sprite = spr_heroe_camina_frente;
				//sprite_index = sprite;
				//image_index = 0;
			}
			if(image_index < 10 and scr_check_for_collision_down_esquivar()){
				y += velocidad + 3;
				colisionador.y += velocidad + 3;
			}
		}
		if(direccion == "abajo-izquierda"){
			if(image_index >= 10 and alarm[0] <= 0 and estado == "esquivando"){
				alarm[0] = 5;
				image_speed = 0;
				//sprite = spr_heroe_camina_frente;
				//sprite_index = sprite;
				//image_index = 0;
			}
			if(image_index < 10 and scr_check_for_collision_down_esquivar() and scr_check_for_collision_left_esquivar()){
				y += velocidad_diagonal + 2;
				x -= velocidad_diagonal + 2;
		
				colisionador.y += velocidad_diagonal + 2;
				colisionador.x -= velocidad_diagonal + 2;
			}
		}
		if(direccion == "abajo-derecha"){
			if(image_index >= 10 and alarm[0] <= 0 and estado == "esquivando"){
				alarm[0] = 5;
				image_speed = 0;
				//sprite = spr_heroe_camina_frente;
				//sprite_index = sprite;
				//image_index = 0;
			}
			if(image_index < 10 and scr_check_for_collision_down_esquivar() and scr_check_for_collision_right_esquivar()){
				y += velocidad_diagonal + 2;
				x += velocidad_diagonal + 2;
		
				colisionador.y += velocidad_diagonal + 2;
				colisionador.x += velocidad_diagonal + 2;
			}
		}
		if(direccion == "arriba"){
			if(image_index >= 10 and alarm[0] <= 0 and estado == "esquivando"){
				alarm[0] = 5;
				image_speed = 0;
				//sprite = spr_heroe_camina_frente;
				//sprite_index = sprite;
				//image_index = 0;
			}
			if(image_index < 10 and scr_check_for_collision_up_esquivar()){
				y -= velocidad + 3;
				colisionador.y -= velocidad + 3;
			}
		}
		if(direccion == "arriba-izquierda"){
			if(image_index >= 10 and alarm[0] <= 0 and estado == "esquivando"){
				alarm[0] = 5;
				image_speed = 0;
				//sprite = spr_heroe_camina_frente;
				//sprite_index = sprite;
				//image_index = 0;
			}
			if(image_index < 10 and scr_check_for_collision_up_esquivar() and scr_check_for_collision_left_esquivar()){
				y -= velocidad_diagonal + 2;
				x -= velocidad_diagonal + 2;
		
				colisionador.y -= velocidad_diagonal + 2;
				colisionador.x -= velocidad_diagonal + 2;
			}
		}
		if(direccion == "arriba-derecha"){
			if(image_index >= 10 and alarm[0] <= 0 and estado == "esquivando"){
				alarm[0] = 5;
				image_speed = 0;
				//sprite = spr_heroe_camina_frente;
				//sprite_index = sprite;
				//image_index = 0;
			}
			if(image_index < 10 and scr_check_for_collision_up_esquivar() and scr_check_for_collision_right_esquivar()){
				y -= velocidad_diagonal + 2;
				x += velocidad_diagonal + 2;
		
				colisionador.y -= velocidad_diagonal + 2;
				colisionador.x += velocidad_diagonal + 2;
			}
		}
		if(direccion == "izquierda"){
			if(image_index >= 10 and alarm[0] <= 0 and estado == "esquivando"){
				alarm[0] = 5;
				image_speed = 0;
				//sprite = spr_heroe_camina_frente;
				//sprite_index = sprite;
				//image_index = 0;
			}
			if(image_index < 10 and scr_check_for_collision_left_esquivar()){
				x -= velocidad + 3;
				colisionador.x -= velocidad + 3;
			}
		}
		if(direccion == "derecha"){
			if(image_index >= 10 and alarm[0] <= 0 and estado == "esquivando"){
				alarm[0] = 5;
				image_speed = 0;
				//sprite = spr_heroe_camina_frente;
				//sprite_index = sprite;
				//image_index = 0;
			}
			if(image_index < 10 and scr_check_for_collision_right_esquivar()){
				x += velocidad + 3;
				colisionador.x += velocidad + 3;
			}
		}
	}
	if(estado == "empujando"){
		if(alarm[2]<=0){
			alarm[2] = 1;//room_speed * 2;
		}
	}
}else{
	/*if(audio_is_playing(global.sfx_index)){
		audio_stop_sound(global.sfx_index);
	}*/
	image_speed = 0;
	estado = "parado";
	image_index = 0;
}
//movible = instance_nearest(x, y - 6, obj_caja_madera_movible);
//show_debug_message("heroe y: "+string(y));
//show_debug_message("heroe sensor y: "+string(colisionador.y));
//show_debug_message("el numero de imagenes de rodar es: "+string(sprite_get_number(spr_heroe_esquivando_frente)));