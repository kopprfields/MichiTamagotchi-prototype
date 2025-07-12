/// @description Advance state
switch(state)
{
	case GameLaunchState.logo_fade_in:
		state = GameLaunchState.logo_fade_out;
		break;
	case GameLaunchState.logo_fade_out:
		state = GameLaunchState.warning_fade_in;
		break;
	case GameLaunchState.warning_fade_in:
		state = GameLaunchState.warning_fade_out;
		break;
	case GameLaunchState.warning_fade_out:
		room_goto(rmMain);
		break;
}
alarm_lock = false;