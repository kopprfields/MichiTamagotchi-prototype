/// @description Draw self
if(!opened && state == ItemState.standby) exit;

draw_sprite_ext(sprOverlay, 0, 0, 0, sysGlobal.view_width, sysGlobal.view_height, 0, c_white, overlay_alpha);
draw_self();

if(current_michoid_id < array_length(unlocked_michoids))
{
	if(unlocked_michoids[current_michoid_id] != EncyclopediaUnlockState.locked)
	{
		var text = michoids[current_michoid_id][EncyclopediaProperty.display_name];
		draw_text_color(x+sprite_width/4-string_width(text)/2, y+sprite_height/3-(sprite_normal_height+25), text, c_black, c_black, c_black, c_black, 1);
		switch(michoids[current_michoid_id][EncyclopediaProperty.object_type])
		{
			case EvolutionPhases.egg:
				current_sprite = michoids[current_michoid_id][EncyclopediaProperty.sprite_base];
				draw_sprite(current_sprite, 0, x+sprite_width/4, y+sprite_height/3);
				break;
			case EvolutionPhases.larva:
			case EvolutionPhases.juvenile:
			case EvolutionPhases.adult:
				var sprite_name = michoids[current_michoid_id][EncyclopediaProperty.sprite_base] + sprite_variation;
				current_sprite = asset_get_index(sprite_name);
				draw_sprite(current_sprite, sprite_image, x+sprite_width/4, y+sprite_height/3);
				break;
		}
	}
	else
	{
		var text = "Unknown entry";
		draw_text_color(x+sprite_width/4-string_width(text)/2, y+sprite_height/3-(sprite_normal_height+25), text, c_black, c_black, c_black, c_black, 1);
		draw_sprite(sprLockedEntry, 0, x+sprite_width/4, y+sprite_height/3);
	}
	
	switch(unlocked_michoids[current_michoid_id])
	{
		case EncyclopediaUnlockState.unlock:
			draw_set_font(fntEncyclopediaSmall);
			text_draw_custom(x+10,  y+sprite_height/2, michoids[current_michoid_id][EncyclopediaProperty.description], c_black, sprite_width/2-20);
			break;
		case EncyclopediaUnlockState.locked:
			draw_set_font(fntEncyclopediaSmallLocked);
			text_draw_custom(x+10,  y+sprite_height/2, "Keep playing to discover this Michoid!", c_black, sprite_width/2-20);
			break;
		case EncyclopediaUnlockState.partial:
			draw_set_font(fntEncyclopediaSmallLocked);
			text_draw_custom(x+10,  y+sprite_height/2,  "Take care of this Michoid to unlock additional information!", c_black, sprite_width/2-20);
			break;
	}
	
	draw_set_font(fntEncyclopediaSmallest);
	var text = "Design: John Doe";
	draw_text_color(x+sprite_width/2-15-string_width(text), y+sprite_height-30, text, c_black, c_black, c_black, c_black, 1);
			
	//Reset font
	draw_set_font(-1);
}