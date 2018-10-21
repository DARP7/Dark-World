/// @description Insert description here
// You can write your code in this editor
if(mi_padre != noone){
	//show_debug_message("si paso????");
	global.is_paused = true;
	draw_set_alpha(alfa);
	draw_set_color(c_black);
	draw_rectangle(/*camera_get_view_x(view_camera[0])*/0, /*camera_get_view_y(view_camera[0])*/0,display_get_gui_width(), display_get_gui_height(), false);
	draw_set_alpha(1);
}