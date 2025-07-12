// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function text_draw_custom(_x, _y, _string, _color, _width){
	//Less cluttered than the below
	draw_text_ext_color(_x, _y, _string, string_height("a"), _width, _color, _color, _color, _color, 1);
}