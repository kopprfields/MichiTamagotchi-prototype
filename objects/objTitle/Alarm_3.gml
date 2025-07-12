/// @description Instantiate quit button
if(sysGlobal.operating_system < CONST_BROWSER)
{
	array_insert(children, array_length(children), instance_create_layer(x, y+sprite_height+190, "UI", objQuitButton));
}

//Unlock all children
for(var i = 0; i < array_length(children); i++)
{
	children[i].alarm[1] = 0.1*room_speed;
}