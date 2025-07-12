// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function use_poop_item(){
	if(target_is_valid)
	{
		var instance = instance_place(x, y, target);
		if(instance.state == ItemState.standby)
		{
			ds_queue_enqueue(sysPlayer.poop_queue, instance);
			instance.state = ItemState.queued;
			instance.cooldown_seconds += value;
			debug_writeline("Poop item: {0} used on {1} ({2}) ; poop queued!", display_name, instance.display_name, instance.id);
		}
	}
}