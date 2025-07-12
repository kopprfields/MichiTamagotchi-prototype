/// @description Instantiate settings button
array_insert(children, array_length(children), instance_create_layer(x, y+sprite_height+90, "UI", objSettingsButton));
//Instantiate next button
alarm[2] = 0.1*room_speed;

