// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function encyclopedia_close(){
	if(objEncyclopediaMenu.opened)
	{
		debug_writeline("encyclopedia closed!");
		unpause_game();
		objEncyclopediaMenu.state = ItemState.retract;
	}
}