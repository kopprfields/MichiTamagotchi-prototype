/// @description Draw self
if(array_length(parCreature.alerts) > 0)
{
	draw_sprite(parCreature.alerts[alert_index mod array_length(parCreature.alerts)], alert_image, x, y);
}