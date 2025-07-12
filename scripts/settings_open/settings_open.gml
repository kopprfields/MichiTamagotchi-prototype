// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function settings_open(){
	if(sysGlobal.gamestate != GameState.pause)
	{
		debug_writeline("settings opened!");
		audio_play_sound(sfxQuack, 1, false);
	}
}