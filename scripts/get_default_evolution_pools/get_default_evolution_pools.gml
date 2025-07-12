// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function get_default_evolution_pools(){
	var result = array_create(2);
	
	//Create evolution pool for Larva Michoids = default Juveniles
	result[EvolutionPhases.larva] = [
		objSlimeGrey //To do
	];
	
	//Create evolution pool for Juveniles Michoids = default Adults
	result[EvolutionPhases.juvenile] = [
		objSlimeGrey //To do
	];
	
	return result;
}