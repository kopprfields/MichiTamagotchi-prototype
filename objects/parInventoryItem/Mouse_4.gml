/// @description Grab item
// Inherit the parent event
event_inherited();

if(state != ItemState.locked)
{
	inventory_close();
}