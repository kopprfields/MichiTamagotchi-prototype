// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function open_letter(){
	instance_create_layer(0, 0, "UI", objLetterBig, {end_message: objLetter.end_message, spoons_reward: objLetter.spoons_reward});
	instance_destroy(objLetter);
}