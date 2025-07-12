/// @description Unlock Encyclopedia entry
if(michoid_id != undefined)
{
	if(objEncyclopediaMenu.unlocked_michoids[michoid_id] == EncyclopediaUnlockState.locked)
	{
		objEncyclopediaMenu.unlocked_michoids[michoid_id] = EncyclopediaUnlockState.partial;
		michoid_unlocked = true;
		alarm[3] = 3*room_speed;
	}
}