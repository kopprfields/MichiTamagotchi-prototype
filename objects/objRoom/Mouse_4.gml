/// @description Set creature's target
if(!instance_exists(parCreature) || sysGlobal.gamestate != GameState.main_cycle) exit;

if(array_contains([MichoidState.idle, MichoidState.walk], parCreature.state) && !place_meeting(mouse_x, mouse_y, parCreature))
{
	set_destination(mouse_x, mouse_y);
	parCreature.alarm[0] = -1; //reset auto-movement
}