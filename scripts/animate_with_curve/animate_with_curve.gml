// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function animate_with_curve(_start, _end, _progression, _step, _curve_id){
	_progression = clamp(_progression + _step, 0, 1);
	var position = animcurve_channel_evaluate(EASING_ANIMATION[_curve_id], _progression);
	var distance = _start - _end;
	var new_position = _end + (distance*position);
	
	return [new_position, _progression];
}