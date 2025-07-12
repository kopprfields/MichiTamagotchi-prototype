// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function play_button(){
	debug_writeline("Play button pressed!");
	objTitle.state = TitleState.retract;
	objTitle.alarm[4] = 1;
	if(instance_exists(parEgg))
	{
		parEgg.alarm[2] = 10*room_speed;
	}
}