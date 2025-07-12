// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function json_save(file, data) {
    var str = json_stringify(data);
	
    var buffer = buffer_create(string_byte_length(str), buffer_fixed, 1);
	
    buffer_write(buffer, buffer_text, str);
    buffer_save(buffer, file);
    buffer_delete(buffer);
}