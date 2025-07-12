/// @description Initialization
state = MichoidState.idle;
previous_state = MichoidState.idle;

target = {
	x: x, 
	y: y
};


hunger = 80;
sleep = 80;
hygiene = 80;
mood = 80;

penalty = 0;
death_cause = DeathCauses.undefined;

evolve_alpha = 0;
evolve_alpha_step = 0.25/room_speed;
evolution = noone;

alerts = array_create(0);

alarm[0] = irandom_range(4, 8)*room_speed;
alarm[1] = 1;
alarm[11] = 1;

alarm_hold = {
	state: 1,
	needs: 1,
	runaway: 1,
	lifespan: 1
};

michoid_unlocked = false;

click_counter = 0;
shake = false;
shake_step = 0.04;
shake_direction = -1;
shake_strength = 1;
alarm[5] = shake_step*room_speed;
x_position = x;

default_evolution_pool = get_default_evolution_pools();

if(!instance_exists(objEmote))
{
	instance_create_layer(x, y, "Instances", objEmote);
}
if(!instance_exists(objAlert))
{
	instance_create_layer(x, y, "Instances", objAlert);
}

michoid_id = undefined;
for(var i = 0; i < array_length(objEncyclopediaMenu.michoids); i++)
{
	if(objEncyclopediaMenu.michoids[i][EncyclopediaProperty.object] == object_index)
	{
		michoid_id = i;
	}
}