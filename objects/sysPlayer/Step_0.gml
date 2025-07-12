/// @description Spoons display position
if(run_number=0) exit;

switch(state)
{
	case ItemState.deploy:
		var animation = animate_with_curve(end_y, start_y, animation_progression, animation_step, EasingFunctions.ease_out_elastic);
		y = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			state = ItemState.standby;
			animation_progression = 0;
		}
		break
		
	case ItemState.retract:
		var animation = animate_with_curve(start_y, end_y, animation_progression, animation_step, EasingFunctions.ease_out_back);
		y = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			state = ItemState.standby;
			animation_progression = 0;
		}
		break;
}