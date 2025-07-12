/// @description Set view
camera_set_view_size(view, sysGlobal.view_width, sysGlobal.view_height);

if(instance_exists(sysGlobal))
{
	var _x = sysGlobal.x - sysGlobal.view_width/2 + (room_width-sysGlobal.view_width)/2;
	var _y = sysGlobal.y - sysGlobal.view_height/2 + (room_height-sysGlobal.view_height)/2;
	camera_set_view_pos(view, _x, _y);
}