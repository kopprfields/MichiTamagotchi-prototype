/// @description Position and behavior
if(sysPlayer.run_number == 0) exit;
switch(state)
{
	//case ButtonState.deploy:
	case ItemState.deploy:
		var animation = animate_with_curve(end_y, start_y, animation_progression, animation_step, EasingFunctions.ease_in_back);
		y = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			state = ItemState.standby;
			animation_progression = 0;
			
			var tip_timer = 30;
			if(sysPlayer.run_number < 5)
			{
				//Tip appear faster for new players
				tip_timer = 10;
			}
			
			//Activate tip if user hasn't clicked for too long
			alarm[0] = tip_timer*room_speed; 
		}
		break;
		
	//case ButtonState.retract:	
	case ItemState.retract:
		tip = false;
		var animation = animate_with_curve(start_y, end_y, animation_progression, animation_step, EasingFunctions.ease_out_back);
		y = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			objInventory.state = ItemState.deploy
			state = ItemState.locked;
			animation_progression = 0;
			alarm[0] = -1;
		}
		break;
}

if(tip)
{
	var animation = animate_with_curve(0, 10, tip_progression, tip_sign*tip_step, EasingFunctions.sinus);
	tip_offset = animation[0];
	tip_progression = animation[1];
	if(tip_progression == 0)
	{
		tip_sign = 1;
	}
	else if(tip_progression = 1)
	{
		tip_sign = -1;
	}
}

// Inherit the parent event
event_inherited();

