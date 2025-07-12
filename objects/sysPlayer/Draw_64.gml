/// @description Draw spoons
if(sysGlobal.gamestate != GameState.main_cycle || state != ItemState.standby)
{
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_sprite_ext(sprSpoonCounter, 0, x, y, 1, 1, 0, c_white, 0.75);
	draw_text_color(x+50, y, string(spoons), c_black, c_black, c_black, c_black, 1);
	draw_sprite(sprSpoon, 0, x+55, y);

	if(earned_spoons > 0)
	{
		draw_text_color(x+110, y, "+"+string(earned_spoons), c_black, c_black, c_black, c_black, 1);
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}