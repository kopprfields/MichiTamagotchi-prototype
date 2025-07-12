/// @description State machine
switch(state)
{
	case ItemState.deploy:
		var animation = animate_with_curve(start_y, end_y, animation_progression, animation_step, EasingFunctions.quart_out);
		y = animation[0];
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
		var animation = animate_with_curve(end_y, start_y, animation_progression, animation_step, EasingFunctions.quart_in);
		y = animation[0];
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
	children[i].x = x + children[i].x_offset;
	children[i].y = y + children[i].y_offset;
}
for(var i = 0; i < array_length(eggs); i++)
{
	eggs[i].x = x + eggs[i].x_offset;
	eggs[i].y = y + eggs[i].y_offset;
}