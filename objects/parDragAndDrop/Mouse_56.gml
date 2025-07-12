/// @description Release item
if(state == ItemState.grabbed)
{
	state = ItemState.standby;
	if(default_script != noone)
	{
		script_execute(default_script);
	}
}