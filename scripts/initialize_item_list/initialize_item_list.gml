// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function initialize_item_list(){
	var result = array_create(ItemType.SIZE);
	
	result[ItemType.food] = [
		[objPlastic, undefined, undefined], 
		[objBread, undefined, undefined], 
		[objJosepher, undefined, undefined]
	];
	result[ItemType.toy] = [
		[objBall, undefined, undefined]
	];
	result[ItemType.sleep] = [
		[objTeddy, undefined, undefined]
	];
	result[ItemType.shower] = [
		[objSprayBottle, undefined, undefined],
		[objScrub, undefined, undefined],
		[objSoap, undefined, undefined]
	];
	result[ItemType.poop] = [
		[objGloves, undefined, undefined]
	];
	
	for(var i = 0; i < ItemType.SIZE; i++)
	{
		for(var j = 0; j < array_length(result[i]); j++)
		{
			var instance_temp = instance_create_layer(0, 0, "Instances", result[i][j][ItemProperty.object]);
			result[i][j][ItemProperty.price] = instance_temp.price;
			result[i][j][ItemProperty.display_name] = instance_temp.display_name;
			instance_destroy(instance_temp);
		}
	}
	
	return result;
}