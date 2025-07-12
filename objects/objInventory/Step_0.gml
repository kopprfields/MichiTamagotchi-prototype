/// @description Position and behavior
switch(state)
{
	case ItemState.deploy:
	//case ButtonState.deploy:
		var animation = animate_with_curve(end_y, start_y, animation_progression, animation_step, EasingFunctions.ease_in_back);
		y = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			state = ItemState.standby;
			animation_progression = 0;
		}
		break;
		
	//case ButtonState.retract:
	case ItemState.retract:
		var animation = animate_with_curve(start_y, end_y, animation_progression, animation_step, EasingFunctions.ease_out_back);
		y = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			objUpgrades.state = ItemState.deploy
			state = ItemState.locked;
			animation_progression = 0;
		}
		break;
}

// Inherit the parent event
event_inherited();

