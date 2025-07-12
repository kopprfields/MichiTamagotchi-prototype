/// @description State machine
switch(state)
{
	case ItemState.deploy:
		overlay_alpha = clamp(overlay_alpha+animation_step, 0, 0.5);
		var animation = animate_with_curve(start_x, end_x, animation_progression, animation_step, EasingFunctions.quart_out);
		x = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			for(var i = 0; i < array_length(children); i++)
			{
				if(children[i].state != ItemState.locked)
				{
					children[i].state = ItemState.standby;
				}
			}
			animation_progression = 0;
			state = ItemState.standby;
			opened = true;
		}
		break;
	case ItemState.retract:
		opened = false;
		overlay_alpha = clamp(overlay_alpha+animation_step*-1, 0, 0.5);
		var animation = animate_with_curve(end_x, start_x, animation_progression, animation_step, EasingFunctions.quart_in);
		x = animation[0];
		animation_progression = animation[1];
		if(animation_progression >= 1)
		{
			animation_progression = 0;
			state = ItemState.standby;
		}
		break;
}

for(var i = 0; i < array_length(children); i++)
{
	if(children[i].state != ItemState.grabbed)
	{
		children[i].x = x + children[i].x_offset;
		children[i].y = y + children[i].y_offset;
	}
}