// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function array_contains(_array, _value){
	var size = array_length(_array)
	for(var i = 0; i < size; i ++)
	{
		if(string(_array[i]) == string(_value))
		{
			return true;
		}
	}
	return false;
}