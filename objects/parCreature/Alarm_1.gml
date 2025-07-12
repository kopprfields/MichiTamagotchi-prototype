/// @description Decrease stats
if(sysGlobal.gamestate == GameState.main_cycle)
{
	var poop_penalty = 1;
	if(sysGlobal.poop_counter > 10)
	{
		poop_penalty = 2;
	}
	else if(sysGlobal.poop_counter > 7)
	{
		poop_penalty = 1.5;
	}
	else if(sysGlobal.poop_counter > 5)
	{
		poop_penalty = 1.4;
	}
	else if(sysGlobal.poop_counter > 3)
	{
		poop_penalty = 1.3;
	}
	else if(sysGlobal.poop_counter > 1)
	{
		poop_penalty = 1.2;
	}
	
	var number_alerts = array_length(alerts);
	
	var mood_multiplier = 1 + number_alerts*0.15;
	
	mood = clamp(mood-mood_decrease_rate*mood_multiplier, 0, 100);
	hygiene = clamp(hygiene-hygiene_decrease_rate*poop_penalty, 0, 100);
	hunger = clamp(hunger-hunger_decrease_rate, 0, 100);
	sleep = clamp(sleep-sleep_decrease_rate, 0, 100);
}
set_alerts();

//1 tic per second
alarm[1] = room_speed;
