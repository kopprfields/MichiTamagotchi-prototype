// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function set_alerts(){
	var run_away_sequence = false;
	var run_away_timer = 15;
	
	if(instance_exists(parCreature))
	{
		var new_array = array_create(0);
		if(parCreature.hunger < 30)
		{
			if(parCreature.hunger < 10)
			{
				run_away_sequence = true;
				parCreature.death_cause = DeathCauses.hunger;
			}
			array_push(new_array, sprHunger_alert);
		}
		else if(parCreature.hunger < 65)
		{
			array_push(new_array, sprHunger_warning);
		}
		
		if(parCreature.mood < 30)
		{
			if(parCreature.mood < 10)
			{
				run_away_sequence = true;
				if(!array_contains([DeathCauses.boredom, DeathCauses.undefined], parCreature.death_cause))
				{
					parCreature.death_cause = DeathCauses.you_are_a_horrible_parent;
				}
				else
				{
					parCreature.death_cause = DeathCauses.boredom;
				}
			}
			array_push(new_array, sprMood_alert);
		}
		else if(parCreature.mood < 65)
		{
			array_push(new_array, sprMood_warning);
		}
		
		if(parCreature.sleep < 30)
		{
			if(parCreature.sleep < 10)
			{
				run_away_sequence = true;
				if(!array_contains([DeathCauses.exhaustion, DeathCauses.undefined], parCreature.death_cause))
				{
					parCreature.death_cause = DeathCauses.you_are_a_horrible_parent;
				}
				else
				{
					parCreature.death_cause = DeathCauses.exhaustion;
				}
			}
			array_push(new_array, sprSleep_alert);
		}
		else if(parCreature.sleep < 65)
		{
			array_push(new_array, sprSleep_warning);
		}
		
		if(parCreature.hygiene < 30)
		{
			if(parCreature.hygiene < 10)
			{
				run_away_sequence = true;
				if(!array_contains([DeathCauses.stink, DeathCauses.undefined], parCreature.death_cause))
				{
					parCreature.death_cause = DeathCauses.you_are_a_horrible_parent;
				}
				else
				{
					parCreature.death_cause = DeathCauses.stink;
				}
			}
			array_push(new_array, sprHygiene_alert);
		}
		else if(parCreature.hygiene < 65)
		{
			array_push(new_array, sprHygiene_warning);
		}
		
		if(sysGlobal.poop_counter >= 10)
		{
			if(sysGlobal.poop_counter >= 15)
			{
				run_away_sequence = true;
				if(!array_contains([DeathCauses.drowned_in_poop, DeathCauses.undefined], parCreature.death_cause))
				{
					parCreature.death_cause = DeathCauses.you_are_a_horrible_parent;
				}
				else
				{
					parCreature.death_cause = DeathCauses.drowned_in_poop;
				}
			}
			array_push(new_array, sprPoop_alert);
		}
		else if(sysGlobal.poop_counter >= 5)
		{
			array_push(new_array, sprPoop_warning);
		}
		
		//attribute penalty
		if(!array_contains(parCreature.alerts, sprHunger_alert) && array_contains(new_array, sprHunger_alert))
		{
			parCreature.penalty++;
		}
		if(!array_contains(parCreature.alerts, sprSleep_alert) && array_contains(new_array, sprSleep_alert))
		{
			parCreature.penalty++;
		}
		if(!array_contains(parCreature.alerts, sprMood_alert) && array_contains(new_array, sprMood_alert))
		{
			parCreature.penalty++;
		}
		if(!array_contains(parCreature.alerts, sprHygiene_alert) && array_contains(new_array, sprHygiene_alert))
		{
			parCreature.penalty++;
		}
		if(!array_contains(parCreature.alerts, sprPoop_alert) && array_contains(new_array, sprPoop_alert))
		{
			parCreature.penalty++;
		}
		
		//Apply new alerts
		parCreature.alerts = new_array;
		if(run_away_sequence)
		{
			if(parCreature.alarm[10] <= 0 && parCreature.state != MichoidState.run_away && parCreature.state != MichoidState.dead && parCreature.state != MichoidState.evolve)
			{
				parCreature.alarm[10] = run_away_timer*room_speed;
			}
		}
		else
		{
			parCreature.death_cause = DeathCauses.undefined;
			parCreature.alarm[10] = -1;
		}
	}
}