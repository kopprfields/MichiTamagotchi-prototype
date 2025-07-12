// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function save_game(){
	//TO DO: get the latest values of whatever needs to be saved into sysSavedData.saved_meta before saving
	
	json_save(sysSavedData.savefile_name, sysSavedData.saved_meta);
}