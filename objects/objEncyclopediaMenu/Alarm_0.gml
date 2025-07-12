/// @description Progress sprite image
if(current_sprite != noone)
{
	sprite_image++;
	sprite_framerate = 1/sprite_get_speed(current_sprite);
}
else
{
	sprite_framerate = 0.5;
}
alarm[0] = sprite_framerate*room_speed;