/// @description Draw self
if(objUpgradeMenu.opened || objUpgradeMenu.state == ItemState.deploy || objUpgradeMenu.state == ItemState.retract)
{
	draw_self();
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	draw_text_ext_color(x, y-(sprite_yoffset+5), display_name, string_height("a"), 60, c_black, c_black, c_black, c_black, 1);
	if(item_for_sale != noone)
	{
		draw_sprite(item_for_sale, 0, x, y);
		draw_text_color(x-10, y+(sprite_height-sprite_yoffset+string_height("a")), price, c_black, c_black, c_black, c_black, 1);
		draw_sprite(sprSpoon, 0, x-10, y+(sprite_height-sprite_yoffset+string_height("a")));
	}
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}