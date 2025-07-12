// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function inventory_open(){
	var encyclopedia_is_closed = objEncyclopediaMenu.state == ItemState.standby && !objEncyclopediaMenu.opened;
	var inventory_is_closed = objInventoryMenu.state != ItemState.retract && !objInventoryMenu.opened;
	var upgrade_is_closed = objUpgradeMenu.state != ItemState.retract && !objUpgradeMenu.opened;
	if(sysGlobal.gamestate == GameState.main_cycle && encyclopedia_is_closed && inventory_is_closed && upgrade_is_closed)
	{
		debug_writeline("inventory opened!");
		pause_game();
		objInventoryMenu.state = ItemState.deploy;
	}
}