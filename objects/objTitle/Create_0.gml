/// @description Initialization
state = TitleState.deploy;

start_position = -200;
end_position = sysGlobal.view_height/20;

x = sysGlobal.view_width/2;
y = start_position;

animation_step = 1/room_speed;
title_animation_progression = 0;

version_position = [
	sysGlobal.view_width - string_width(sysGlobal.version),
	sysGlobal.view_height - string_height(sysGlobal.version)
];
version_animation_progression = 0;
version_retract_delay = 0.3;

children = array_create(0);

//blur effect
blur_area_id = blur_area_create();
blur_value = 0.1;
blur_step = 1/room_speed;