/// @description Skip
switch(state)
{
	case GameLaunchState.logo_fade_in:
		if(image_alpha != 1)
		{
			image_alpha = 1;
		}
		else
		{
			alarm[0] = 1;
		}
		break;
	case GameLaunchState.logo_fade_out:
		if(image_alpha != 0)
		{
			image_alpha = 0;
		}
		else
		{
			alarm[0] = 1;
		}
		break;
	case GameLaunchState.warning_fade_in:
		if(image_alpha != 1)
		{
			image_alpha = 1;
		}
		else
		{
			alarm[0] = 1;
		}
		break;
	case GameLaunchState.warning_fade_out:
		if(image_alpha != 0)
		{
			image_alpha = 0;
		}
		else
		{
			alarm[0] = 1;
		}
		break;
}