/// @description Insert description here
// You can write your code in this editor
if(global.starting_point != noone){
	x = global.starting_point.x;
	y = global.starting_point.y;
}
image_speed = 0;
sprite = noone;

velocidad_imagen = 1;//0.8;
direccion = 0;
izquierda = 0;
derecha = 0;
arriba = 0;
abajo = 0;
mover = 0;
velocidad = 3;//160;//192;
velocidad_diagonal = 2;
seconds_passed = 0;
move_speed_this_frame = 0;
estado = "parado";
colisionador = instance_create_layer(x, y, "Instances", obj_heroe_colision_muro);
fullscreen = false;
pushing_counter = 0;
movible = noone;
