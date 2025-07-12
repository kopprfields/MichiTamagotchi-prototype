/// @description State machine and collision check
// Inherit the parent event
event_inherited();

if(state = ItemState.grabbed)
{
	if(place_meeting(x, y, target))
	{
		target_is_valid = true;
		image_index = 2;
	}
	else
	{
		target_is_valid = false;
		image_index = 3
	}
}
else
{
	target_is_valid = false;
}

