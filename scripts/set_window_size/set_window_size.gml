// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function set_window_size(){
	if(sysGlobal.fullscreen)
	{
		window_set_size(sysGlobal.view_width, sysGlobal.view_height);
		sysViewport.alarm[0] = 1;
		surface_resize(application_surface, sysGlobal.view_width, sysGlobal.view_height);
		window_set_fullscreen(true);
	}
	else
	{
		window_set_size(sysGlobal.view_width*sysGlobal.resolutions[sysGlobal.resolution_index], sysGlobal.view_height*sysGlobal.resolutions[sysGlobal.resolution_index]);
		sysViewport.alarm[0] = 1;
		surface_resize(application_surface, sysGlobal.view_width*sysGlobal.resolutions[sysGlobal.resolution_index], sysGlobal.view_height*sysGlobal.resolutions[sysGlobal.resolution_index]);
		window_set_fullscreen(false);
	}
}