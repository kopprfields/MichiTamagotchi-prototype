/// @description draw_self
switch(state)
{
	case MichoidState.evolve:
		draw_self();
		draw_sprite_ext(asset_get_index(sprite_base + "evolve"), image_index, x, y, image_xscale, image_yscale, 0, c_white, evolve_alpha);
		break;
	
	default:
		draw_self();
		if(michoid_unlocked)
		{
			draw_sprite(sprNew, 0, x, bbox_top-2);
		}
		break;
}