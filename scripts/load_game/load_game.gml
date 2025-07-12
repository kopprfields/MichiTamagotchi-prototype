// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function load_game(){
	if(file_exists(sysSavedData.savefile_name))
	{
		sysSavedData.saved_meta = json_load(sysSavedData.savefile_name);
	}
	
	//TO DO: load the retrieved data into whatever needs to be loaded
}