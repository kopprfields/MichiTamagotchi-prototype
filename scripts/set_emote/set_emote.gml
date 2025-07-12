// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function set_emote(emote_index, timer_seconds = 3){
	if(instance_exists(objEmote))
	{
		var emote = noone;
		switch(emote_index)
		{
			case EmoteState.angry:
				emote = sprAngry;
				break;
			case EmoteState.happy:
				emote = sprHappy;
				break;
			case EmoteState.sleep:
				emote = sprSleep;
				break;
		}
	
		objEmote.sprite_index = emote;
		objEmote.alarm[0] = timer_seconds*room_speed;
	}
}