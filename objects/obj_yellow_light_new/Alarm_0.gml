/// @description Insert description here
// You can write your code in this editor
if(up){
	radio_size += 1;
	if(radio_size == radio_size_fixed + 5){
		up = false;
	}
}else{
	radio_size -= 1;
	if(radio_size == radio_size_fixed){
		up = true;
	}
}
alarm[0] = 5;