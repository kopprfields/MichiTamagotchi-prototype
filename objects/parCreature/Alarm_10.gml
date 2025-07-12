/// @description Early death
if(sysGlobal.gamestate != GameState.main_cycle || state == MichoidState.evolve || state == MichoidState.dead || state == MichoidState.run_away)
{
	//retry in 10 frames
	alarm[10] = 10;
	exit;
}
set_destination(515,80);
state = MichoidState.run_away;
set_emote(EmoteState.angry, 60);