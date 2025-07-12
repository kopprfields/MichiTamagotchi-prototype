/// @description Process poops
if(current_poop == noone && !ds_queue_empty(poop_queue))
{
	current_poop = ds_queue_dequeue(poop_queue);
	current_poop.alarm[0] = current_poop.cooldown_seconds*room_speed;
	current_poop.state = ItemState.in_progress;
}

alarm[0] = 10;