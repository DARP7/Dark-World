/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(initial_alfa);

draw_set_color(color_of_light);

//draw_circle(x, y, radio, false);

script_execute(scr_circle_shadind, x, y, radio, radio, c_yellow, c_yellow, initial_alfa, 0.04);
script_execute(scr_circle_shadind, x, y, radio *2, radio, c_yellow, c_yellow, initial_alfa - 0.04, 0.04 - 0.02);
script_execute(scr_circle_shadind, x, y, radio * 3, radio, c_yellow, c_yellow, initial_alfa- 0.02, 0.04 - 0.01);

draw_set_alpha(1);
draw_set_color(c_white);