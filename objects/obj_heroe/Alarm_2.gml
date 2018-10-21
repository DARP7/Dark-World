/// @description Empujando caja
// You can write your code in this editor
if(estado == "empujando"){
	if(direccion == "arriba"){//EMPUJA HACIA ARRIBA******************************
		movible = instance_nearest(x, y - 6, obj_caja_madera_movible);
		//show_debug_message("x , y de la caja: "+string(movible.x)+", "+string(movible.y));
		//show_debug_message("x , y del sensor: "+string(movible.sensor.x)+", "+string(movible.sensor.y));
		var pasos = 0;
		for (pasos = 1; pasos < 2; pasos++){
			if(scr_check_for_collision_up_movible() /*and pasos % 2 == 0*/){
				if(!audio_is_playing(global.sfx_index)){
					global.sfx_index = audio_play_sound(sfx_moviendo_caja, 10, false);//Aqui comienza el sonido
				}
				y -= 1;
				colisionador.y -= 1;
				movible.y -= 1;
				//movible.sensor.y -= 1;
			}
		}
	}//**************************************************************************
	
	if(direccion == "abajo"){//EMPUJA HACIA ABAJO******************************
		movible = instance_nearest(x, y + 6, obj_caja_madera_movible);
		//show_debug_message("x , y de la caja: "+string(movible.x)+", "+string(movible.y));
		//show_debug_message("x , y del sensor: "+string(movible.sensor.x)+", "+string(movible.sensor.y));
		var pasos = 0;
		for (pasos = 1; pasos < 2; pasos++){
			if(scr_check_for_collision_down_movible() /*and pasos % 2 == 0*/){
				if(!audio_is_playing(global.sfx_index)){
					global.sfx_index = audio_play_sound(sfx_moviendo_caja, 10, false);//Aqui comienza el sonido
				}
				y += 1;
				colisionador.y += 1;
				movible.y += 1;
				//movible.sensor.y -= 1;
			}
		}
	}//**************************************************************************
}else{
	movible = noone;	
}