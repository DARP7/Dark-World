/// @description Insert description here
// You can write your code in this editor
estado = "parado";
if(direccion == "abajo" || direccion == "abajo-izquierda" || direccion == "abajo-derecha"){
	sprite = spr_heroe_camina_frente;
	sprite_index = sprite;
	direccion = "abajo";
}
if(direccion == "arriba" || direccion == "arriba-izquierda" || direccion == "arriba-derecha"){
	sprite = spr_heroe_camina_espalda;
	sprite_index = sprite;
	direccion = "arriba";
}
if(direccion == "izquierda" || direccion == "derecha"){
	sprite = spr_heroe_camina_lado_v2;
	sprite_index = sprite;
}