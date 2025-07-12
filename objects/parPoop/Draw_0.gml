/// @description Draw self
draw_self();
if(state == ItemState.queued)
{
	draw_sprite(sprQueued, 0, x, y-sprite_height-5)
}
else if(state == ItemState.in_progress)
{
	draw_sprite(sprInProgress, 0, x, y-sprite_height-5)
}