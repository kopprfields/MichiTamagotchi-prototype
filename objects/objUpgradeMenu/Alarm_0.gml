/// @description Create new eggs
array_push(eggs, instance_create_layer(sysGlobal.view_width/4, 150, "UI", objPurpleSlimeEgg, {depth: -1100, x_offset: sysGlobal.view_width/4, y_offset: 150, activate_tip: false}));
array_push(eggs, instance_create_layer(2*sysGlobal.view_width/4, 150, "UI", objPurpleSlimeEgg, {depth: -1100, x_offset: 2*sysGlobal.view_width/4, y_offset: 150, activate_tip: false}));
array_push(eggs, instance_create_layer(3*sysGlobal.view_width/4, 150, "UI", objPurpleSlimeEgg, {depth: -1100, x_offset: 3*sysGlobal.view_width/4, y_offset: 150, activate_tip: false}));