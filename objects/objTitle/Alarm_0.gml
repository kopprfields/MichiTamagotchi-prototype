/// @description Instantiate play button
array_insert(children, array_length(children), instance_create_layer(x, y+sprite_height+40, "UI", objPlayButton));
//Instantiate next button
alarm[1] = 0.1*room_speed;