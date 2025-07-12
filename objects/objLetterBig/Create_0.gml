/// @description Initialization
pause_game();
state = ItemState.deploy;
overlay_alpha = 0;

start_y = sysGlobal.view_height;
end_y =  100;

x = 0;
y = start_y;

animation_step = 2/room_speed;
animation_progression = 0;