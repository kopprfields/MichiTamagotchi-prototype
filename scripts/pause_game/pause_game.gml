// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function pause_game(){
	if(sysGlobal.gamestate != GameState.pause)
	{
		sysGlobal.previous_gamestate = sysGlobal.gamestate;
		sysGlobal.gamestate = GameState.pause;
		
		if(instance_exists(parCreature))
		{
			parCreature.alarm_hold.state = ALARM_STATE;
			parCreature.alarm_hold.needs = ALARM_NEEDS;
			parCreature.alarm_hold.runaway = ALARM_RUN_AWAY;
			parCreature.alarm_hold.lifespan = ALARM_LIFESPAN;
		}
	}
}