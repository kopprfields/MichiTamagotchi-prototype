// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function use_sleep_item(){
	if(target_is_valid && parCreature.state != MichoidState.sleep && parCreature.state != MichoidState.evolve && parCreature.state != MichoidState.run_away && parCreature.state != MichoidState.dead)
	{
		debug_writeline("Sleep item: {0} used on Michoid: {1}!", display_name, target.display_name);
		parCreature.speed=0;
			
		if(parCreature.sleep > 70 || array_contains(parCreature.dislikes, object_index))
		{
			parCreature.penalty++;
			parCreature.state = MichoidState.angry;
			parCreature.alarm[0] = 2*room_speed;
			set_emote(EmoteState.angry);
			debug_writeline("But it wasn't sleepy...");
		}
		else
		{
			if(array_contains(parCreature.likes, object_index))
			{
				parCreature.sleep += value*1.5;
				parCreature.mood += value*0.1;
			}
			else
			{
				parCreature.sleep += value;
			}
			parCreature.state = MichoidState.sleep;
			set_emote(EmoteState.sleep, cooldown_seconds);
			parCreature.alarm[0] = cooldown_seconds*room_speed;
			parCreature.x_position = parCreature.x;
		}
		set_alerts();
	}
}