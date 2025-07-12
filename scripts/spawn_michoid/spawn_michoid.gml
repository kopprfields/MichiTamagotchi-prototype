// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function spawn_michoid(_michoid, _x = sysGlobal.view_width/2, _y = sysGlobal.view_height/2){
	if(!instance_exists(parCreature) && sysGlobal.gamestate == GameState.inter_cycle)
	{
		var instance = instance_create_layer(_x, _y, "Instances", _michoid);
		sysGlobal.gamestate = GameState.main_cycle;
		sysPlayer.state = ItemState.retract;
		objUpgrades.state = ItemState.retract;
		if(sysPlayer.run_number == 0)
		{
			objInventory.state = ItemState.deploy
		}
		
		//Unlock Michoid entry in Encyclopedia
		instance.alarm[2] = 1;
	}
}