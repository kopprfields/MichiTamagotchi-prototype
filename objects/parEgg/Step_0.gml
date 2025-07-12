/// @description Crack egg
switch(state)
{
	case ItemState.vibrate:
		x = x_position + shake_direction * shake_strength;
		break;
	default:
		x = x_position;
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
/*else if(sysGlobal.gamestate == GameState.pause ||sysGlobal.gamestate == GameState.title)
{
	var tip_timer = 30;
	if(sysPlayer.run_number < 5)
	{
		//Appear faster for new players
		tip_timer = 10;
	}
	alarm[2] = tip_timer*room_speed;
}*/