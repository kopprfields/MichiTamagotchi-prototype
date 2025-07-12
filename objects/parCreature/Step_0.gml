/// @description State machine
switch(state)
{
	case MichoidState.idle:
		speed = 0;
		sprite_index = asset_get_index(sprite_base + "idle");
		break;
	case MichoidState.angry:
		speed = 0;
		sprite_index = asset_get_index(sprite_base + "angry");
		break;
	case MichoidState.happy:
		speed = 0;
		sprite_index = asset_get_index(sprite_base + "happy");
		break;
	case MichoidState.walk:
		sprite_index = asset_get_index(sprite_base + "walk");
		if(point_distance(x, y, target.x, target.y) > 3*move_speed)
		{
			move_towards_point(target.x, target.y, move_speed);
		}
		else //If destination reached, back to idle
		{
			speed = 0;
			target.x = x;
			target.y = y;
			state = MichoidState.idle;
			previous_state = MichoidState.walk;
			alarm[0] = irandom_range(4, 8)*room_speed;
		}
		break;
	case MichoidState.sleep:
		speed = 0;
		sprite_index = asset_get_index(sprite_base + "sleep");
		if(shake)
		{
			x = x_position + shake_direction * shake_strength;
		}
		break;
	case MichoidState.evolve:
		speed = 0;
		sprite_index = asset_get_index(sprite_base + "idle");
		
		//Make sprite glow wihite
		if(evolve_alpha < 1)
		{
			evolve_alpha = clamp(evolve_alpha+evolve_alpha_step, 0, 1);
		}
		else
		{
			//TO DO: create particle effect on death
			instance_destroy();
			
			//Evolve and pass on relevant stats
			audio_play_sound(sfxEvolution, 1, false);
			var evolved_michoid = instance_create_layer(x, y, "instances", evolution);
			evolved_michoid.hunger = hunger;
			evolved_michoid.sleep = sleep;
			evolved_michoid.hygiene = hygiene;
			evolved_michoid.mood = mood;
			evolved_michoid.penalty = penalty;
			evolved_michoid.alerts = alerts;
			evolved_michoid.image_xscale = image_xscale;
			
			evolved_michoid.state = MichoidState.idle;
			evolved_michoid.alarm[2] = 1;
			
			//Unlock all encyclopedia information of current Michoid
			if(michoid_id != undefined)
			{
				objEncyclopediaMenu.unlocked_michoids[michoid_id] = EncyclopediaUnlockState.unlock;
			}
		}
		break;
	case MichoidState.dead:
		speed = 0;
		sprite_index = asset_get_index(sprite_base + "dead");
		break;
		
	case MichoidState.run_away:
		sprite_index = asset_get_index(sprite_base + "walk");
		if(point_distance(x, y, target.x, target.y) > 3*move_speed)
		{
			move_towards_point(target.x, target.y, move_speed);
		}
		else //If destination reached, despawn
		{
			audio_play_sound(sfxDoorClose, 1, false);
			var final_reward = calculate_reward(spoons_reward, evolution_phase, death_cause, penalty);
			instance_create_layer(x,y,"Instances", objLetter, {spoons_reward: final_reward, end_message: pick_message(death_cause, final_reward)});
			instance_destroy(objEmote);
			instance_destroy(objAlert);
			instance_destroy();
		}
		break;
}

if(sysGlobal.gamestate == GameState.main_cycle)
{
	depth = -y;
}