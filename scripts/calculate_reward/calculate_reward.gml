// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function calculate_reward(base_reward, evolution_phase, death_cause, penalty){
	var result = base_reward;
	
	switch(evolution_phase)
	{
		case EvolutionPhases.larva:
			result = 1;
			break;
		default:
			result = base_reward;
			break;
	}
	
	switch(death_cause)
	{
		case DeathCauses.perfect_run:
			result = floor(result*1.5);
			break;
		case DeathCauses.old_age:
			break;
		case DeathCauses.you_are_a_horrible_parent:
			result = floor(result/3);
			break;
		default:
			result = floor(result/2);
			break;
	}
	
	//take away 10% of base reward for every 3 penalties
	result = floor(result-(base_reward/10)*(penalty div 3))
	
	return clamp(result, 1, 9999);
}