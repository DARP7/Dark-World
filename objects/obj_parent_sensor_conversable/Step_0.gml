/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_sensor_conversable_caja_madera)){
	if(!place_meeting(x, y, obj_sensor_conversable_caja_madera)){
		can_interact = true;
	}
}
if(instance_exists(obj_heroe)){
	if(can_interact){
		if(place_meeting(x, y, obj_heroe)){
			draw_notification_symbol = true;
		}else{
			draw_notification_symbol = false;
		}
	}
	if(!place_meeting(x, y, obj_heroe)){
		draw_notification_symbol = false;
	}
}