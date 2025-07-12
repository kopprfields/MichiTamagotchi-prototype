/// @description despawn sequence
switch(state)
{
	//case ButtonState.standby:
	//case ButtonState.locked:
	case ItemState.standby:
	case ItemState.locked:
		image_index = 0;
		break;
	//case ButtonState.pressed:
	case ItemState.pressed:
		image_index = 1;
		break;
	//case ButtonState.deploy:
	case ItemState.deploy:
		image_index = 0;
		if(animation_progression < 1)
		{
			var animation = animate_with_curve(1, 0, animation_progression, animation_step, EasingFunctions.ease_in_back);
			image_xscale = animation[0];
			image_yscale = animation[0];
			animation_progression = animation[1];
		}
		else
		{
			animation_progression = 0;
			//state = ButtonState.locked;
			state = ItemState.locked;
		}
		break;
	
	//case ButtonState.retract:
	case ItemState.retract:
		image_index = 0;
		var animation = animate_with_curve(end_y, start_y, animation_progression, animation_step, EasingFunctions.ease_out_back);
		y = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			instance_destroy();
		}
		break;
}