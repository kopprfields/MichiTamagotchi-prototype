/// @description set position
depth = parCreature.depth-1;
if(parCreature.shake)
{
	x = parCreature.x_position;
}
else
{
	x = parCreature.x;
}
y = parCreature.bbox_top + y_offset;