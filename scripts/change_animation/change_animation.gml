// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function change_animation(){
	var current_animation = objEncyclopediaMenu.sprite_variation;
	var animation = [
		"idle",
		"walk",
		"happy",
		"angry",
		"sleep",
		"dead"
	];
	
	for(var i = 0; i < array_length(animation); i++)
	{
		if(animation[i] == current_animation)
		{
			if(i == array_length(animation)-1)
			{
				objEncyclopediaMenu.sprite_variation = animation[0];
			}
			else
			{
				objEncyclopediaMenu.sprite_variation = animation[i+1];
			}
			break;
		}
	}
}