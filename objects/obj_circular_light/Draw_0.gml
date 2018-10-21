/// @description Insert description here
// You can write your code in this editor

gpu_set_blendmode(bm_add);

shader_set(shd_lighting);

var red = shader_get_uniform(shd_lighting, "u_fRed");
var green = shader_get_uniform(shd_lighting, "u_fGreen");
var blue = shader_get_uniform(shd_lighting, "u_fBlue");
var alpha = shader_get_uniform(shd_lighting, "u_fAlpha");
shader_set_uniform_f(red, 0.8);
shader_set_uniform_f(green, 0.5);
shader_set_uniform_f(blue, 0.8);
shader_set_uniform_f(alpha, 0.5);

draw_sprite_ext(spr_circular_light, ima, x, y, 1, 1, 0, c_white, 0.8);

shader_reset();

gpu_set_blendmode(bm_normal);

