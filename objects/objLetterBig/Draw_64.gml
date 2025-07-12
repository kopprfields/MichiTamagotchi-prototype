/// @description Draw self
draw_sprite_ext(sprOverlay, 0, 0, 0, sysGlobal.view_width, sysGlobal.view_height, 0, c_white, overlay_alpha);
draw_sprite_ext(sprite_index, 0, 50, y, sysGlobal.view_width-100, sysGlobal.view_height-100, 0, c_white, 1);
draw_text_ext_color(70, y+20, end_message, string_height("a"), sysGlobal.view_width-140, c_black, c_black, c_black, c_black, 1);