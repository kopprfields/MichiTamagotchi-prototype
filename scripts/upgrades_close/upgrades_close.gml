// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function upgrades_close(){
	if(objUpgradeMenu.opened)
	{
		debug_writeline("upgrades closed!");
		unpause_game();
		objUpgradeMenu.state = ItemState.retract;
	}
}