/// @description fade in and out
switch(state)
{
	case GameLaunchState.logo_fade_in:
	case GameLaunchState.warning_fade_in:
		if(image_alpha < 1)
		{
			image_alpha += alpha_step;
		}
		else if(!alarm_lock)
		{
			//hold for 5 seconds
			alarm_lock = true;
			alarm[0] = 5*room_speed;
		}
		break;
	case GameLaunchState.logo_fade_out:
	case GameLaunchState.warning_fade_out:
		if(image_alpha > 0)
		{
			image_alpha -= alpha_step;
		}
		else if(!alarm_lock)
		{
			//hold for 1 seconds
			alarm_lock = true;
			alarm[0] = 1*room_speed;
		}
		break;
		break;
}