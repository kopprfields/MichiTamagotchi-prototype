// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function end_cycle(){
	//Switch to inter-cycle phase
	if(sysPlayer.run_number == 0)
	{
		objUpgrades.state = ItemState.locked;
	}
	sysPlayer.run_number++;
	sysGlobal.gamestate = GameState.inter_cycle;
	objInventory.state = ItemState.retract;
	
	//Clear poops
	with(parPoop)
	{
		instance_destroy();
	}
	ds_queue_clear(sysPlayer.poop_queue);
	sysPlayer.current_poop = noone;
	
	//award spoons and display end message
	sysPlayer.earned_spoons = spoons_reward;
	sysPlayer.alarm[1] = 0.5*room_speed;
	sysPlayer.earned_spoons_timer = clamp(room_speed/(spoons_reward*2), 1, 30);
	sysPlayer.state = ItemState.deploy;
	debug_writeline("Cycle ended!");
	
	//Prepare upgrade menu
	objUpgradeMenu.alarm[0] = 1;
	refresh_upgrades();
	
	//Destroy letter
	instance_destroy(objLetterBig);
}