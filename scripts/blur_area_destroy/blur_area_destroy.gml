// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function blur_area_destroy(blur_id) {
	if is_struct(blur_id) {
		surface_free(blur_id._surf_ping);
		surface_free(blur_id._surf_pong);
		if surface_exists(blur_id._surf_full) surface_free(blur_id._surf_full);
		delete blur_id;
	}
}