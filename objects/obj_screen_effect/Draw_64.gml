/// @description Insert description here
// You can write your code in this editor
gpu_set_blendmode(bm_add);
draw_set_alpha(0.15);
draw_circle_colour(display_get_gui_width() / 2, display_get_gui_height() / 2, radio, my_tuned_color, c_black, 0);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);