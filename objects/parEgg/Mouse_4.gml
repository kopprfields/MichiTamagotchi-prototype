/// @description Tap egg
if(objUpgradeMenu.opened && layer != layer_get_id("Instances"))
{
	with(parEgg)
	{
		instance_destroy();
	}
	objUpgradeMenu.eggs = [];
	upgrades_close();
	
	var alarm_tip = 30;
	if(sysPlayer.run_number < 5)
	{
		alarm_tip = 10;
	}
	
	instance_create_layer(sysGlobal.view_width/2, sysGlobal.view_height/2, "Instances", self.object_index, {alarm_tip: alarm_tip});
	
	//Unlock entry in encyclopedia
	if(michoid_id != undefined)
	{
		if(objEncyclopediaMenu.unlocked_michoids[michoid_id] == EncyclopediaUnlockState.locked)
		{
			objEncyclopediaMenu.unlocked_michoids[michoid_id] = EncyclopediaUnlockState.partial;
		}
	}
}
else if(sysGlobal.gamestate == GameState.inter_cycle)
{
	state = ItemState.vibrate;
	alarm[0] = 0.5*room_speed;
	press_count++;
	
	switch(press_count)
	{
		case 1:
			audio_play_sound(sfxEggTap_1, 1, false);
			break
		case 2:
			audio_play_sound(sfxEggTap_2, 1, false);
			break
		default:
			if(child != noone)
			{
				spawn_michoid(child, x, y);
			}
			//Unlock entry in encyclopedia
			if(michoid_id != undefined)
			{
				objEncyclopediaMenu.unlocked_michoids[michoid_id] = EncyclopediaUnlockState.unlock;
			}
			audio_play_sound(sfxEggCrack, 1, false);
			instance_destroy();
			break
	}
}