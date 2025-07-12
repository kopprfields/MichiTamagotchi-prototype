/// @description State machine
switch(state)
{
	case ItemState.locked:
		image_index = 1;
		break;
	case ItemState.standby:
		image_index = 0;
		break;
	case ItemState.grabbed:
		x = mouse_x;
		y = mouse_y;
		break;
}