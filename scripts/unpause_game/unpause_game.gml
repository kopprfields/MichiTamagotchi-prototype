// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function unpause_game(){
	if(sysGlobal.gamestate == GameState.pause)
	{
		sysGlobal.gamestate = sysGlobal.previous_gamestate;
		
		if(instance_exists(parCreature))
		{
			//ALARM_STATE = max(parCreature.alarm_hold.state, 1);
			ALARM_NEEDS = max(parCreature.alarm_hold.needs, 1);
			ALARM_RUN_AWAY = parCreature.alarm_hold.runaway;
			ALARM_LIFESPAN = max(parCreature.alarm_hold.lifespan, 1);
		}
	}
}