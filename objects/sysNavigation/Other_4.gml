/// @description Initialize rooms
next_room = noone;
switch(room)
{
	case rmMain:
		if(sysGlobal.gamestate == GameState.title)
		{
			instance_create_layer(0,0,"UI",objTitle);
		}
		instance_create_layer(0,0,"Background_Instances",objRoom);
		instance_create_layer(0,0,"UI",objInventory);
		instance_create_layer(0,0,"UI",objSettings);
		instance_create_layer(0,0,"UI",objEncyclopedia);
		instance_create_layer(0,0,"UI",objUpgrades);
		
		instance_create_layer(0,0,"UI",objInventoryMenu);
		instance_create_layer(0,0,"UI",objUpgradeMenu);
		instance_create_layer(0,0,"UI",objEncyclopediaMenu);
		
		//TO DO: use saved data
		instance_create_layer(sysGlobal.view_width/2,sysGlobal.view_height/2,"Instances",objPurpleSlimeEgg, {alarm_tip: -1});
		//instance_create_layer(sysGlobal.view_width/2,sysGlobal.view_height/2,"Instances",objSlime);
		//instance_create_layer(sysGlobal.view_width/2,sysGlobal.view_height/2,"Instances",objLetter);
		break;
	case rmLanding:
		instance_create_layer(0,0,"UI",objLandingPage);
		break;
}