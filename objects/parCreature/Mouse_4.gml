/// @description Play general state animation
if(array_contains([], state)) exit;
if(sysGlobal.gamestate == GameState.pause) exit;

switch(state)
{
	case MichoidState.sleep:
		if(click_counter < 3)
		{
			click_counter++;
			shake = true;
			alarm[6] = 0.5*room_speed;
			audio_play_sound(sfxNudge, 1, false);
		}
		else
		{
			var sleep_penalty = alarm[0]/room_speed;
			click_counter = 0;
			state = MichoidState.angry;
			set_emote(EmoteState.angry);
			shake = false;
			penalty++;
			mood = clamp(mood-10, 0, 100);
			sleep = clamp(sleep-sleep_penalty, 0, 100);
			speed=0;
			alarm[0] = 2*room_speed;
		}
		break;
		
	case MichoidState.idle:
	case MichoidState.walk:
		if(mean(mood, sleep, hunger, hygiene) > 50)
		{
			state = MichoidState.happy;	
		}
		else
		{
			state = MichoidState.angry;	
		}
		speed=0;
		alarm[0] = 2*room_speed;
		break;
}