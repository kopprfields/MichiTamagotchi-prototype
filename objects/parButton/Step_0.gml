/// @description Manage state
switch(state)
{
	case ItemState.standby:
		image_index = 0;
		break;
	//case ButtonState.pressed:
	case ItemState.pressed:
		image_index = 1;
		break;
	case ItemState.locked:
		image_index = 2;
		break;
}