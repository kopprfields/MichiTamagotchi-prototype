/// @description Initialization
press_count = 0
state = ItemState.standby;
x_position = x;
shake_step = 0.04;
shake_direction = -1;
shake_strength = 1;

tip_image = 0;

alarm[1] = shake_step*room_speed;

tip = false;
tip_step = 2/room_speed;
tip_progression = 0;
tip_sign = 1;
tip_offset = 0;

if(activate_tip)
{
	alarm[2] = alarm_tip*room_speed;
}
alarm[3] = 0.5*room_speed;

michoid_id = undefined;
for(var i = 0; i < array_length(objEncyclopediaMenu.michoids); i++)
{
	if(objEncyclopediaMenu.michoids[i][EncyclopediaProperty.object] == object_index)
	{
		michoid_id = i;
	}
}