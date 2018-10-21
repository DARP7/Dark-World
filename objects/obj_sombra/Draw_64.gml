/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alfa);
draw_set_color(my_color);
gpu_set_blendmode(bm_subtract);
draw_rectangle(/*camera_get_view_x(view_camera[0])*/0, /*camera_get_view_y(view_camera[0])*/0, camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]), false);
//draw_circle_colour(/*camera_get_view_x(view_camera[0])*/obj_heroe.x, /*camera_get_view_y(view_camera[0])*/obj_heroe.y, camera_get_view_width(view_camera[0])/2, my_tuned_color, my_tuned_color, 0);
draw_set_color(c_white);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);