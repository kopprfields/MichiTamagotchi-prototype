/// @description Draw self
draw_self();
if(array_length(eggs) == 0)
{
	draw_sprite(sprOutOfStock, 0, x+sysGlobal.view_width/4, y+150);
	draw_sprite(sprOutOfStock, 0, x+2*sysGlobal.view_width/4, y+150);
	draw_sprite(sprOutOfStock, 0, x+3*sysGlobal.view_width/4, y+150);
}