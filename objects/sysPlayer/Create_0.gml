/// @description Initialization
state = ItemState.standby;

start_y = -30;
end_y = 27;
animation_progression = 0;
animation_step = 2/room_speed;
x = 25;
y = start_y;

run_number = 0;
spoons = 0;
earned_spoons = 0;
earned_spoons_timer = 0;

unlocked_items = array_create(5);
unlocked_items[ItemType.food] = [
	ItemState.standby, ItemState.locked, ItemState.locked
];
unlocked_items[ItemType.sleep] = [
	ItemState.standby
];
unlocked_items[ItemType.toy] = [
	ItemState.standby
];
unlocked_items[ItemType.shower] = [
	ItemState.standby, ItemState.locked, ItemState.locked
];
unlocked_items[ItemType.poop] = [
	ItemState.standby
];

items = initialize_item_list();

//Do not save poop queue ; but do save poop positions perhaps?
poop_queue = ds_queue_create();
current_poop = noone;

alarm[0] = 1;