/// @description Draw self and tip
draw_self();
if(tip && activate_tip)
{
	draw_sprite(sprLeftClic, tip_image, x_position, y-sprite_height-(5+tip_offset));
}