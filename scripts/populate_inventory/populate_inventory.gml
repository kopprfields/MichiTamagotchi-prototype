// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function populate_inventory(){
	var x_offset = 10;
	var y_position = [90, 155, 220, 285, 325];
	var _sprite_width = sprite_get_width(sprPlastic);
	for(var i = 0; i < FoodItems.SIZE; i++)
	{
		if(!instance_exists(sysPlayer.items[ItemType.food][i][ItemProperty.object]))
		{
			array_push(objInventoryMenu.children, instance_create_layer(x+45+(x_offset+_sprite_width)*i, y+y_position[0], "UI", sysPlayer.items[ItemType.food][i][ItemProperty.object], {x_offset: 45+(x_offset+_sprite_width)*i, y_offset: +y_position[0], depth: -1100, state: sysPlayer.unlocked_items[ItemType.food][i], item_type: ItemType.food, item_id: i}))
		}
	}
	for(var i = 0; i < ToysItems.SIZE; i++)
	{
		if(!instance_exists(sysPlayer.items[ItemType.toy][i][ItemProperty.object]))
		{
			array_push(objInventoryMenu.children, instance_create_layer(x+45+(x_offset+_sprite_width)*i, y+y_position[1], "UI", sysPlayer.items[ItemType.toy][i][ItemProperty.object], {x_offset: 45+(x_offset+_sprite_width)*i, y_offset: +y_position[1], depth: -1100, state: sysPlayer.unlocked_items[ItemType.toy][i], item_type: ItemType.toy, item_id: i}))
		}
	}
	for(var i = 0; i < SleepItems.SIZE; i++)
	{
		if(!instance_exists(sysPlayer.items[ItemType.sleep][i][ItemProperty.object]))
		{
			array_push(objInventoryMenu.children, instance_create_layer(x+45+(x_offset+_sprite_width)*i, y+y_position[2], "UI", sysPlayer.items[ItemType.sleep][i][ItemProperty.object], {x_offset: 45+(x_offset+_sprite_width)*i, y_offset: y_position[2], depth: -1100, state: sysPlayer.unlocked_items[ItemType.sleep][i], item_type: ItemType.sleep, item_id: i}))
		}
	}
	for(var i = 0; i < ShowerItems.SIZE; i++)
	{
		if(!instance_exists(sysPlayer.items[ItemType.shower][i][ItemProperty.object]))
		{
			array_push(objInventoryMenu.children, instance_create_layer(x+45+(x_offset+_sprite_width)*i, y+y_position[3], "UI", sysPlayer.items[ItemType.shower][i][ItemProperty.object], {x_offset: 45+(x_offset+_sprite_width)*i, y_offset: y_position[3], depth: -1100, state: sysPlayer.unlocked_items[ItemType.shower][i], item_type: ItemType.shower, item_id: i}))
		}
	}
	for(var i = 0; i < PoopItems.SIZE; i++)
	{
		if(!instance_exists(sysPlayer.items[ItemType.poop][i][ItemProperty.object]))
		{
			array_push(objInventoryMenu.children, instance_create_layer(x+45+(x_offset+_sprite_width)*i, y+y_position[4], "UI", sysPlayer.items[ItemType.poop][i][ItemProperty.object], {x_offset: 45+(x_offset+_sprite_width)*i, y_offset: y_position[4], depth: -1100, state: sysPlayer.unlocked_items[ItemType.poop][i], item_type: ItemType.poop, item_id: i}))
		}
	}
}