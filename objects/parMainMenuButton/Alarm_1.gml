/// @description Unlock button
/*if(state == ButtonState.locked)
{
	state = ButtonState.standby;
}*/
if(state == ItemState.locked)
{
	state = ItemState.standby;
}
else
{
	//try again in 5 frames
	alarm[1] = 5;
}