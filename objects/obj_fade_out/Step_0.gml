/// @description Insert description here
// You can write your code in this editor
if(mi_padre != noone){
	if(alfa > 1){
		//instance_destroy();
		if(!active_father_alarm){
			active_father_alarm = true;
			mi_padre.alarm[0] = 1;
		}
	}
	alfa += 0.01;
}