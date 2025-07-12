/// @description Draw SCAM logo and warnings
switch(state)
{
	case GameLaunchState.logo_fade_in:
	case GameLaunchState.logo_fade_out:
		draw_sprite_ext(sprite_index, 0, sysGlobal.view_width/2, sysGlobal.view_height/2, image_xscale, image_yscale, image_angle, c_white, image_alpha);
		if(DEBUG_MODE)
		{
			var warning_string = "SCAM logo is not final";
			draw_text_color(0, sysGlobal.view_height-string_height(warning_string), warning_string, c_white, c_white, c_white, c_white, 1);
		}
		break;
	case GameLaunchState.warning_fade_in:
	case GameLaunchState.warning_fade_out:
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_ext_color(sysGlobal.view_width/2, sysGlobal.view_height/2, disclaimer_string, string_height("a"), sysGlobal.view_width-100, c_white, c_white, c_white, c_white, image_alpha);
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
		if(DEBUG_MODE)
		{
			var warning_string = "Disclaimer is not final either";
			draw_text_color(0, sysGlobal.view_height-string_height(warning_string), warning_string, c_white, c_white, c_white, c_white, 1);
		}
		break;
}