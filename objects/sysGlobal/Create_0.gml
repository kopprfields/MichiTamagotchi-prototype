gamestate = GameState.title;
previous_gamestate = gamestate;
operating_system = os_browser == browser_not_a_browser ? os_type : CONST_BROWSER + os_browser;

version = "prototype";

gpu_set_texfilter(false);

view_width = window_get_width();
view_height = window_get_height();

x = view_width/2;
y = view_height/2;

resolutions = [0.5, 1, 2];

//Settings
fullscreen = false;
resolution_index = 1;

poop_counter = 0;


easing_animations = animcurve_get(acEasingFunctions);
#macro EASING_ANIMATION sysGlobal.easing_animations.channels

instance_create_layer(0,0,"System",sysViewport);
instance_create_layer(0,0,"System",sysSavedData);
instance_create_layer(0,0,"System",sysNavigation);
instance_create_layer(0,0,"System",sysPlayer);

blur_gaussian_size_radius = shader_get_uniform(__ba_sh_blur_gaussian, "size_radius");

debug_writeline(operating_system);
