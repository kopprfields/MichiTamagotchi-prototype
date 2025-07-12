/// @description Initialization
state = ItemState.standby;

depth = -1000;

start_y = 0;
end_y =  -sprite_height;

opened = false;

x = 0;
y = end_y;

animation_step = 2/room_speed;
animation_progression = 0;

var children_y_offset = 300;

//Instantiate static buttons ; close button is last
children = [
	instance_create_layer(0, 0, "UI", objBuyUpgrade, {x_offset: sysGlobal.view_width/6, y_offset: children_y_offset, default_script: upgrade_buy, depth: -1100, state: ItemState.locked}),
	instance_create_layer(0, 0, "UI", objBuyUpgrade, {x_offset: 2*sysGlobal.view_width/6, y_offset: children_y_offset, default_script: upgrade_buy, depth: -1100, state: ItemState.locked}),
	instance_create_layer(0, 0, "UI", objBuyUpgrade, {x_offset: 3*sysGlobal.view_width/6, y_offset: children_y_offset, default_script: upgrade_buy, depth: -1100, state: ItemState.locked}),
	instance_create_layer(0, 0, "UI", objBuyUpgrade, {x_offset: 4*sysGlobal.view_width/6, y_offset: children_y_offset, default_script: upgrade_buy, depth: -1100, state: ItemState.locked}),
	instance_create_layer(0, 0, "UI", objBuyUpgrade, {x_offset: 5*sysGlobal.view_width/6, y_offset: children_y_offset, default_script: upgrade_buy, depth: -1100, state: ItemState.locked}),
	instance_create_layer(x+257, y+3, "UI", objCloseButton, {x_offset: 550, y_offset: 5, default_script: upgrades_close, depth: -1100, state: ItemState.locked})
];

eggs = [];

if(!instance_exists(parEgg))
{
	objUpgradeMenu.alarm[0] = 1;
}

refresh_upgrades();