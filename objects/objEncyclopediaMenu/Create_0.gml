/// @description Initialization
state = ItemState.standby;
overlay_alpha = 0;

depth = -1000;

start_y = sysGlobal.view_height;
end_y =  (sysGlobal.view_height-sprite_height)/2;

x = sysGlobal.view_width/2;
y = start_y;

opened = false;

animation_step = 2/room_speed;
animation_progression = 0;

button_offset = 2;
button_start_position = [25, 15];

children = array_create(0);

current_michoid_id = 0;
sprite_normal_height = sprite_get_height(sprLockedEntry);

current_sprite = noone;
sprite_image = 0;
sprite_framerate = 0.5;
alarm[0] = sprite_framerate*room_speed;
sprite_variation = "idle";

michoids = [
	[objPurpleSlimeEgg, undefined, undefined, undefined, undefined], 
	[objSlime, undefined, undefined, undefined, undefined], 
	[objSlimePink, undefined, undefined, undefined, undefined], 
	[objSlimeGrey, undefined, undefined, undefined, undefined]
];
unlocked_michoids = [
	EncyclopediaUnlockState.partial, 
	EncyclopediaUnlockState.locked, 
	EncyclopediaUnlockState.locked, 
	EncyclopediaUnlockState.locked];

initialize_encyclopedia();