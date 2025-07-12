/// @description Initialization
start_y = sysGlobal.view_height + sprite_height;
end_y = sysGlobal.view_height - 5;
y = start_y;
x = 35;

animation_step = 2/room_speed;
animation_progression = 0;

state = ItemState.locked;

tip = false;
tip_step = 2/room_speed;
tip_progression = 0;
tip_sign = 1;
tip_offset = 0;