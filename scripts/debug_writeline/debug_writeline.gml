// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function debug_writeline(_string){
	if(DEBUG_MODE)
	{
		var result = _string;
		for (var i = 1; i < argument_count; i++) 
		{ 
	        result = string_replace_all(result, "{"+string(i-1)+"}", argument[i]);
	    }
		show_debug_message(result);
	}
}