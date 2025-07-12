// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function set_destination(_x, _y){
	parCreature.target.x = _x;
	parCreature.target.y = _y;
	parCreature.image_xscale = (_x-parCreature.x)/abs(parCreature.x-_x);
	parCreature.state = MichoidState.walk;
}