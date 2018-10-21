/// @description Insert description here
// You can write your code in this editor
if(subir){
	if(radio < 67){
		radio += 1;
	}else{
		subir = false;
	}
}else{
	if(radio > 60){
		radio -= 1;
	}else{
		subir = true;	
	}
}

pl_light_set_radius(radio);
alarm[0] = room_speed * 0.1;