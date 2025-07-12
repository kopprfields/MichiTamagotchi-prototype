// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function initialize_evolution_sequence(){
	//Stop everything
	parCreature.alarm[0] = -1;
	parCreature.alarm[1] = -1;
	parCreature.alarm[2] = -1;
	parCreature.alarm[3] = -1;
	parCreature.alarm[4] = -1;
	parCreature.alarm[11] = -1;
	
	if(parCreature.evolution_phase >= EvolutionPhases.adult) //Making sure only larva/juvenile evolve
	{
		parCreature.state = MichoidState.dead;
	}
	else
	{
		if(script_execute(parCreature.evolution_conditions) && parCreature.direct_evolution != noone) //Conditions met, stay in evolution line
		{
			parCreature.evolution = parCreature.direct_evolution;
		}
		else //Conditions not met, evolve into default pool
		{
			parCreature.evolution = parCreature.default_evolution_pool[parCreature.evolution_phase][irandom(array_length(parCreature.default_evolution_pool[parCreature.evolution_phase])-1)];
		}
	}
}