// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function refresh_upgrades(){
	for(var i = 0; i < ItemType.SIZE; i++)
	{
		var item_sprite = noone;
		var item_price = 0;
		var item_state = ItemState.locked;
		var item_name = "Out of stock!";
		var item_id = -1;
		
		for(var j = 0; j < array_length(sysPlayer.unlocked_items[i]); j++)
		{
			if(sysPlayer.unlocked_items[i][j] == ItemState.locked)
			{
				item_sprite = object_get_sprite(sysPlayer.items[i][j][ItemProperty.object]);
				item_price = sysPlayer.items[i][j][ItemProperty.price];
				item_name = sysPlayer.items[i][j][ItemProperty.display_name];
				item_id = j;
				
				if(sysPlayer.spoons >= item_price)
				{
					item_state = ItemState.standby;
				}
				break;
			}
		}

		objUpgradeMenu.children[i].item_for_sale = item_sprite;
		objUpgradeMenu.children[i].price = item_price;
		objUpgradeMenu.children[i].state = item_state;
		objUpgradeMenu.children[i].item_type = i;
		objUpgradeMenu.children[i].item_id = item_id;
		objUpgradeMenu.children[i].display_name = item_name;
	}
}