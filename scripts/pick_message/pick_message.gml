// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function pick_message(death_cause = DeathCauses.undefined, spoons_reward = "some"){
	var result;
	var spoon_word = "spoons";
	var spoon_word_2 = "them";
	if(spoons_reward == 1)
	{
		spoon_word = "spoon";
		spoon_word_2 = "it";
	}
	spoons_reward = string(spoons_reward) + " " + spoon_word;
	
	switch(death_cause)
	{
		case DeathCauses.old_age:
			result = "Your Michoid has lived a long and fulfilling life, alas it was time for it to go.\n\nBefore crossing the rainbow bridge, it left " + spoons_reward + " as a farewell gift to a loving friend.";
			break;
		case DeathCauses.perfect_run:
			result = "You took perfectly care of your Michoid, congratulations. Not a single mistake, impeccable from start to finish. Bravo.\n\nAs a grand prize, you are awarded " + spoons_reward + ". Again, congratulations.";
			break;
		case DeathCauses.drowned_in_poop:
			result = "Poop. So much poop. On the left? Poop. On the right? More poop. Poop everywhere. Your Michoid couldn't take it anymore. It left in search for a new place to live. One that isn't defined by poop.\n\nYou got " + spoons_reward + ", although you may want to clean " + spoon_word_2 + " a bit.";
			break;
		case DeathCauses.hunger:
			result = "Your Michoid transcended Michoidity after hours of being famished. The Grand Scheme of things, the purpose of the universe... Everything became clear to its eyes. It left to pursue a meditative and spiritual life, remote from the frivolities of society.\n\nYou inherited all of its earthly possessions: " + spoons_reward + ".";
			break;
		case DeathCauses.boredom:
			result = "Your Michoid couldn't take the boredom anymore. It yearned for entertainment, it yearned for grand adventures. It eventually decided it was time to explore the world. It eventually crossed paths with Numi, and is now being taken care of in a loving family.\n\nNumi mailed you " + spoons_reward + " as a compensation for kidnapping your Michoid.";
			break;
		case DeathCauses.stink:
			result = "Your Michoid developped such a strong stench, it had to be a contender for the world record of the smelliest Michoid. It decided to put this talent to good use and left in quest of fame and glory.\n\nYou made sure to hold onto its possessions: " + spoons_reward + ". If it ever becomes famous, these may become valuable.";
			break;
		case DeathCauses.exhaustion:
			result = "Your Michoid collapsed from exhaustion. But then, it had a fit of sleepwalking and walked out the door. You never saw it again.\n\nYou get to keep its collection of " + spoons_reward + ", as a memento.";
			break;
		case DeathCauses.you_are_a_horrible_parent:
			result = "Your Michoid had enough of your neglect. It went to the Michoid Protective Services, and the receptionist was floored at what your Michoid told her.\n\nYou get to keep the " + spoons_reward + " your Michoid left behind, and you earned a brand new restraining order. You monster.";
			break;
		default:
			result = "Your Michoid died suddenly. Nobody could figure out why. These things happen.\n\nYou looted " + spoons_reward + " from its body before moving on with you life.";
			break;
	}
	
	return result;
}