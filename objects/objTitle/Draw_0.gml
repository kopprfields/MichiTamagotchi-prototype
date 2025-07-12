/// @description Draw self
//Draw blur area first
blur_area_draw(blur_area_id, application_surface, 0, 0, display_get_gui_width(), display_get_gui_height(), 0, 0, blur_value);

//Everything bellow draws OVER blurred area. 
//To make sure other objects draw over blurred area, draw them in Draw End event
gpu_set_texfilter(true);
draw_self();

//draw version number
var position_x = version_position[0];
if((state = TitleState.retract && title_animation_progression > version_retract_delay) || state = TitleState.retract_end)
{
	position_x += string_width(sysGlobal.version)*animcurve_channel_evaluate(EASING_ANIMATION[EasingFunctions.ease_out_back], version_animation_progression);
	version_animation_progression += animation_step;
}

draw_text(position_x, version_position[1], sysGlobal.version);
gpu_set_texfilter(false);