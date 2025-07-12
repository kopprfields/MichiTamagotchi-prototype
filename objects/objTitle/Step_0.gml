/// @description in/out animation
switch(state)
{
	case TitleState.deploy:
		var animation = animate_with_curve(end_position, start_position, title_animation_progression, animation_step, EasingFunctions.ease_out_elastic);
		y = animation[0];
		title_animation_progression = animation[1];
		if(title_animation_progression >= 1)
		{
			//Deploy animation done, reset animation progress and instantiate buttons
			state = TitleState.standby;
			title_animation_progression = 0;
			alarm[0] = 0.5*room_speed;
		}
		break
		
	case TitleState.retract:
		var animation = animate_with_curve(start_position, end_position, title_animation_progression, animation_step, EasingFunctions.ease_out_back);
		y = animation[0];
		title_animation_progression = animation[1];
		if(title_animation_progression >= 1)
		{
			//Retract animation done, prepare to self-destroy
			state = TitleState.retract_end;
			alarm[9] = 1.5*version_retract_delay*room_speed;
		}
		break;
		
	//standby/retract_end state: do nothing, wait for player input
}