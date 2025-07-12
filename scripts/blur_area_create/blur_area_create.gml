// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function blur_area_create() {
	static _blur_id = function() constructor {
		_surf_ping = -1;
		_surf_pong = -1;
		_surf_full = -1;
		_downscale = 0;
	}
	return new _blur_id();
}