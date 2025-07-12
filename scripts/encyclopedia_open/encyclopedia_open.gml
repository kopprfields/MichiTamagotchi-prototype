// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function encyclopedia_open(){
	var encyclopedia_is_closed = objEncyclopediaMenu.state == ItemState.standby && !objEncyclopediaMenu.opened;
	var inventory_is_closed = objInventoryMenu.state != ItemState.retract && !objInventoryMenu.opened;
	var upgrade_is_closed = objUpgradeMenu.state != ItemState.retract && !objUpgradeMenu.opened;
	if(sysGlobal.gamestate != GameState.pause && encyclopedia_is_closed && upgrade_is_closed  && inventory_is_closed)
	{
		debug_writeline("encyclopedia opened!");
		pause_game();
		objEncyclopediaMenu.state = ItemState.deploy;
		//Reset active button to default
		with(objEncyclopediaButton)
		{
			active = false;
		}
		objEncyclopediaMenu.children[0].active = true;
		objEncyclopediaMenu.current_michoid_id = 0;
		objEncyclopediaMenu.sprite_variation = "idle";
		objEncyclopediaMenu.sprite_image = 0;
	}
}