// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function use_food_item(){
	if(target_is_valid && parCreature.state != MichoidState.sleep && parCreature.state != MichoidState.evolve && parCreature.state != MichoidState.run_away && parCreature.state != MichoidState.dead)
	{
		debug_writeline("Food item: {0} used on Michoid: {1}!", display_name, target.display_name);
		parCreature.speed=0;
		parCreature.alarm[0] = 2*room_speed;
			
		if(parCreature.hunger > 90 || array_contains(parCreature.dislikes, object_index))
		{
			parCreature.penalty++;
			parCreature.state = MichoidState.angry;
			set_emote(EmoteState.angry);
			debug_writeline("But it wasn't hungry...");
		}
		else
		{
			if(array_contains(parCreature.likes, object_index))
			{
				parCreature.hunger += value*1.5;
				parCreature.mood += value*0.5;
				parCreature.state = MichoidState.happy;
				set_emote(EmoteState.happy);
			}
			else
			{
				parCreature.hunger += value;
				parCreature.state = MichoidState.happy;
			}
		}
		set_alerts();
	}
}