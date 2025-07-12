/// @description Add spoons
if(earned_spoons > 0)
{
	earned_spoons--;
	spoons = clamp(spoons+1, 0, 9999);
	alarm[1] = earned_spoons_timer;
}
else
{
	refresh_upgrades();
}