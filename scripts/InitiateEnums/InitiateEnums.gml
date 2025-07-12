#region states
enum GameState {
	title,
	main_cycle,
	inter_cycle,
	pause,
	menu
}

enum ItemState {
	standby,
	deploy,
	retract,
	grabbed,
	pressed,
	locked,
	vibrate,
	queued,
	in_progress
}

enum ItemType {
	food,
	sleep,
	toy,
	shower,
	poop,
	SIZE
}

enum ItemProperty {
	object,
	price,
	display_name
}

enum EncyclopediaProperty {
	object,
	display_name,
	description,
	sprite_base,
	object_type
}

enum EncyclopediaUnlockState {
	locked,
	partial,
	unlock
}

enum MichoidState {
	idle,
	walk,
	happy,
	angry,
	sleep,
	dead,
	evolve,
	run_away
}

enum DeathCauses {
	undefined,
	old_age,
	perfect_run,
	hunger,
	boredom,
	exhaustion,
	stink,
	drowned_in_poop,
	you_are_a_horrible_parent
}

enum EmoteState {
	noone,
	happy,
	angry,
	sleep
}

enum EvolutionPhases {
	egg,
	larva,
	juvenile,
	adult
}

enum TitleState {
	deploy,
	standby,
	retract,
	retract_end
}

enum GameLaunchState {
	logo_fade_in,
	logo_fade_out,
	warning_fade_in,
	warning_fade_out
}
#endregion states

enum EasingFunctions {
	ease_out_back,
	ease_in_back,
	ease_out_elastic,
	ease_in_elastic,
	ease_out,
	ease_in,
	exponential_out,
	exponential_in,
	quart_out,
	quart_in,
	sinus
}

#region Inventory

enum InventoryTypes {
	food,
	toys,
	sleep,
	shower,
	poop
}

enum FoodItems {
	plastic,
	bread,
	josepher,
	SIZE
}

enum ToysItems {
	ball,
	SIZE
}

enum SleepItems {
	teddy,
	SIZE
}

enum ShowerItems {
	spray_bottle,
	scrub,
	soap,
	SIZE
}

enum PoopItems {
	gloves,
	SIZE
}

#endregion Inventory