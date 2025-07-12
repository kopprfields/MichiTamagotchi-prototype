// Les actifs du script ont changé pour v2.3.0 Voir
// https://help.yoyogames.com/hc/en-us/articles/360005277377 pour plus d’informations
function initialize_encyclopedia(){
	var boxes_per_row = 3;
	var rows_per_page = 4;
	for(var i = 0; i < array_length(objEncyclopediaMenu.michoids); i++)
	{
		var instance = instance_create_layer(0, 0, "System", objEncyclopediaMenu.michoids[i][EncyclopediaProperty.object]);
		objEncyclopediaMenu.michoids[i][EncyclopediaProperty.display_name] = instance.display_name;
		objEncyclopediaMenu.michoids[i][EncyclopediaProperty.description] = instance.description;
		objEncyclopediaMenu.michoids[i][EncyclopediaProperty.sprite_base] = instance.sprite_base;
		objEncyclopediaMenu.michoids[i][EncyclopediaProperty.object_type] = instance.evolution_phase;
		instance_destroy(instance);
	}
	
	for(var i = 0; i < rows_per_page*boxes_per_row; i++)
	{
		var x_position = objEncyclopediaMenu.button_start_position[0] + (i mod boxes_per_row) * (sprite_get_width(sprEncyclopediaButton)+objEncyclopediaMenu.button_offset);
		var y_position = objEncyclopediaMenu.button_start_position[1] + (i div boxes_per_row) * (sprite_get_width(sprEncyclopediaButton)+objEncyclopediaMenu.button_offset);
		
		var instance = instance_create_layer(x_position, y_position, "UI", objEncyclopediaButton, {row_id: i div boxes_per_row, column_id: i mod boxes_per_row, x_offset: x_position, y_offset: y_position});
		array_push(objEncyclopediaMenu.children, instance);
	}
	
	var instance = instance_create_layer(3*objEncyclopediaMenu.sprite_width/4, objEncyclopediaMenu.sprite_height/2-48, "UI", objAnimationButton, {x_offset: 3*objEncyclopediaMenu.sprite_width/4, y_offset: objEncyclopediaMenu.sprite_height/2-48, depth: -1100});
	array_push(objEncyclopediaMenu.children, instance);
	
	//TO DO: page management
}