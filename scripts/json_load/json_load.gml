// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function json_load(file) {
    var buffer = buffer_load(file);
    var str = buffer_read(buffer, buffer_text);
    buffer_delete(buffer);
	
    var data = json_parse(str);
	
    return data;
}