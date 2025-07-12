// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function blur_area_draw(blur_id, surface, x, y, w, h, x_offset, y_offset, radius, downscale=0.5, id_return=false, color=c_white, alpha=1) {
	var _tex_filter_old = gpu_get_tex_filter();
	var _blend_enable_old = gpu_get_blendenable();
	if (alpha == 1) gpu_set_blendenable(false);
	gpu_set_tex_filter(true);
	if (downscale != blur_id._downscale) {
		surface_free(blur_id._surf_ping);
		surface_free(blur_id._surf_pong);
		blur_id._downscale = downscale;
	}
	if !surface_exists(blur_id._surf_ping) {
		var _depth_disable_old = surface_get_depth_disable();
		surface_depth_disable(true);
		blur_id._surf_ping = surface_create(w*downscale, h*downscale);
		blur_id._surf_pong = surface_create(w*downscale, h*downscale);
		surface_depth_disable(_depth_disable_old);
	}
	
	// downscale
	surface_set_target(blur_id._surf_ping);
	draw_surface_part_ext(surface, x-x_offset, y-y_offset, w, h, 0, 0, (w*downscale)/w, (h*downscale)/h, c_white, 1);
	surface_reset_target();
	
	// apply blur shader
	shader_set(__ba_sh_blur_gaussian);
	shader_set_uniform_f(sysGlobal.blur_gaussian_size_radius, w, h, radius);
		
	surface_set_target(blur_id._surf_pong);
	draw_surface(blur_id._surf_ping, 0, 0);
	surface_reset_target();
		
	surface_set_target(blur_id._surf_ping);
	draw_surface(blur_id._surf_pong, 0, 0);
	surface_reset_target();
	shader_reset();
	
	// draw blur
	if (id_return) {
		if !surface_exists(blur_id._surf_full) blur_id._surf_full = surface_create(w, h);
		surface_set_target(blur_id._surf_full);
		draw_surface_stretched_ext(blur_id._surf_ping, 0, 0, w, h, color, alpha);
		surface_reset_target()
		gpu_set_tex_filter(_tex_filter_old);
		gpu_set_blendenable(_blend_enable_old);
		return blur_id._surf_full;
	} else {
		draw_surface_stretched_ext(blur_id._surf_ping, x, y, w, h, color, alpha);
		gpu_set_tex_filter(_tex_filter_old);
		gpu_set_blendenable(_blend_enable_old);
	}
}