/// @description Draw self
draw_self();
if(michoid_id < array_length(objEncyclopediaMenu.unlocked_michoids))
{
	if(objEncyclopediaMenu.unlocked_michoids[michoid_id] != EncyclopediaUnlockState.locked)
	{
		switch(objEncyclopediaMenu.michoids[michoid_id][EncyclopediaProperty.object_type])
		{
			case EvolutionPhases.egg:
				var sprite_id = objEncyclopediaMenu.michoids[michoid_id][EncyclopediaProperty.sprite_base];
				draw_sprite(sprite_id, 0, x+sprite_width/2, y+sprite_height-6);
				break;
			case EvolutionPhases.larva:
			case EvolutionPhases.juvenile:
			case EvolutionPhases.adult:
				var sprite_name = objEncyclopediaMenu.michoids[michoid_id][EncyclopediaProperty.sprite_base] + "idle";
				var sprite_id = asset_get_index(sprite_name);
				draw_sprite(sprite_id, 0, x+sprite_width/2, y+sprite_height-3);
				break;
		}
	}
	else
	{
		draw_sprite(sprLockedEntry, 0, x+sprite_width/2, y+sprite_height-6);
	}
}
else
{
	draw_sprite(sprEmptyEntry, 0, x, y);
}
//TO DO: add page management