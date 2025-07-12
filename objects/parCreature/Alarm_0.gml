/// @description State change timer
previous_state = state;
switch(state)
{
	case MichoidState.idle:
		//Chance for poop
		if(irandom(100) < poop_rate && sysGlobal.gamestate == GameState.main_cycle)
		{
			hunger = clamp(hunger-5, 0, 100);
			var poop = instance_create_layer(x, y, "Instances", objPoop, {depth: -y});
			sysGlobal.poop_counter += poop.value;
		}
		//Change target destination and start walking
		set_destination(irandom_range(50, sysGlobal.view_width-50), irandom_range(150, sysGlobal.view_height-100))
		break;
	case MichoidState.angry:
		alarm[0] = irandom_range(4, 8)*room_speed;
		state = MichoidState.idle;
		break;
	case MichoidState.happy:
		alarm[0] = irandom_range(4, 8)*room_speed;
		state = MichoidState.idle;
		break;
	case MichoidState.walk:
		break;
	case MichoidState.sleep:
		//Chance for gigapoop
		if(irandom(100) < poop_rate*3 && sysGlobal.gamestate == GameState.main_cycle)
		{
			hunger = clamp(hunger-15, 0, 100);
			var poop = instance_create_layer(x, y, "Instances", objGigapoop, {depth: -y});
			sysGlobal.poop_counter += poop.value;
		}
		
		alarm[0] = irandom_range(4, 8)*room_speed;
		state = MichoidState.idle;
		break;
	case MichoidState.evolve:
		break;
	case MichoidState.dead:
		if(penalty == 0)
		{
			death_cause = DeathCauses.perfect_run;
		}
		else
		{
			death_cause = DeathCauses.old_age;
		}
			
		//Unlock all encyclopedia information of current Michoid
		if(michoid_id != undefined)
		{
			objEncyclopediaMenu.unlocked_michoids[michoid_id] = EncyclopediaUnlockState.unlock;
		}
		
		var final_reward = calculate_reward(spoons_reward, evolution_phase, death_cause, penalty);
		instance_create_layer(x,y,"Instances", objLetter, {spoons_reward: final_reward, end_message: pick_message(death_cause, final_reward)});
		instance_destroy();
		break;
}