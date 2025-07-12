/// @description Draw self and tip
draw_self();
if(tip && !instance_exists(parEgg) && y < sysGlobal.view_height)
{
	draw_sprite(sprPointDown, 0, x, y-sprite_height-(5+tip_offset));
}