/// @description Close inventory
if(state==ItemState.standby && sysGlobal.gamestate == GameState.pause)
{
	inventory_close();
}