/// @description Insert description here
// You can write your code in this editor
if(fade_out_object == noone and !toco_el_sensor){
	//show_debug_message("entre aqui¿¿¿¿");
	fade_out_object = instance_create_layer(0,0, "fading_effects", obj_fade_out);
	show_debug_message(fade_out_object.mi_padre);
	fade_out_object.mi_padre = id;
	show_debug_message(fade_out_object.mi_padre);
	toco_el_sensor = true;
}