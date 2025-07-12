/// @description Initialization
start_y = sysGlobal.view_height + sprite_height;
end_y = sysGlobal.view_height - 5;
y = start_y;
x = sysGlobal.view_width - 35;

animation_step = 2/room_speed;
animation_progression = 0;

//state = ButtonState.locked;
state = ItemState.locked;