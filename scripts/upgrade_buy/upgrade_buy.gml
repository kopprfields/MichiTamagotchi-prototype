// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function upgrade_buy(){
	debug_writeline("Upgrade bought!");
	sysPlayer.unlocked_items[item_type][item_id] = ItemState.standby;
	sysPlayer.items[item_type][item_id][ItemProperty.object].state = ItemState.standby;
	sysPlayer.spoons = clamp(sysPlayer.spoons-price, 0, 9999);
	refresh_upgrades();
}