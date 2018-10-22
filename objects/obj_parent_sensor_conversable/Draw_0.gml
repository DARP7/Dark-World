/// @description Insert description here
// You can write your code in this editor
if(can_interact){
	if(draw_notification_symbol){
		if(instance_exists(obj_heroe_colision_muro)){
			draw_set_alpha(1);
			draw_set_color(c_white);
			draw_sprite(spr_notification_symbol,0,obj_heroe_colision_muro.x,obj_heroe_colision_muro.y - (obj_heroe_colision_muro.sprite_height + 18 + obj_heroe_colision_muro.sprite_height / 3));
		}
	}
}