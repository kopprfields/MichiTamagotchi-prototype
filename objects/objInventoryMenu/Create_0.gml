/// @description Initialization
state = ItemState.standby;
overlay_alpha = 0;

depth = -1000;

start_x = 0;
end_x =  -sprite_width;

x = end_x;
y = 0;

opened = false;

animation_step = 2/room_speed;
animation_progression = 0;

children = [
	instance_create_layer(x+257, y+3, "UI", objCloseButton, {x_offset: 257, y_offset: 3, default_script: inventory_close, depth: -1100, state: ItemState.locked})
];

populate_inventory();