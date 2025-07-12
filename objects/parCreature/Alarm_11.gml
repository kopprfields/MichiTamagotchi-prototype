/// @description Progress lifespan
if(sysGlobal.gamestate != GameState.main_cycle)
{
	//retry in 10 frames
	alarm[11] = 10;
	exit;
}

if(lifespan_minutes <= 0)
{
	speed=0;
	//If adult or no direct evolution, die. Otherwise, evolution sequence.
	if(direct_evolution == noone || evolution_phase == EvolutionPhases.adult)
	{
		debug_writeline("Your Michoid is dead!");
		state = MichoidState.dead;
		instance_destroy(objEmote);
		instance_destroy(objAlert);
		alarm[0] = 3*room_speed;
		if(michoid_id != undefined)
		{
			objEncyclopediaMenu.unlocked_michoids[michoid_id] = EncyclopediaUnlockState.unlock;
		}
	}
	else
	{
		previous_state = state;
		debug_writeline("Your Michoid is evolving!");
		//Evolution initialization
		if(evolution == noone)
		{
			initialize_evolution_sequence();
		}
		objEmote.alarm[0] = 1; //Wipe emote
		state = MichoidState.evolve;
	}
}
else
{
	debug_writeline("Your Michoid aged! Time remaining: {0} minutes!", lifespan_minutes);
	lifespan_minutes--;
}

alarm[11] = 60*room_speed;