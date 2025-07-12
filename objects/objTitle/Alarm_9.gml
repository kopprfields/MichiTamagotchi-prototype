/// @description Destroy self
if (blur_value <= 0) 
{
	//Retract animation over, start game
	//TO DO: chose between main_cycle and inter_cycle depending on loaded data
	if(instance_exists(parCreature) || instance_exists(objLetter))
	{
		sysGlobal.gamestate = GameState.main_cycle;
		objInventory.state = ItemState.deploy;
	}
	else
	{
		sysGlobal.gamestate = GameState.inter_cycle
		objUpgrades.state = ItemState.deploy;
	}
	/*sysGlobal.gamestate = GameState.inter_cycle;
	if(sysGlobal.gamestate == GameState.main_cycle)
	{
		objInventory.state = ItemState.deploy;
	}
	else
	{
		objUpgrades.state = ItemState.deploy;
	}*/
	sysPlayer.state = ItemState.deploy;
	instance_destroy();
}
else
{
	//unblur and re-try in 5 frames
	blur_value -= blur_step;
	alarm[9] = 5;
}