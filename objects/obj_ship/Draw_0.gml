/// @description 

draw_self();

// Draw guns
if(guns != -1) {
	draw_sprite_ext(spr_ship_powerups_strip6, guns, x, y, 
		image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
// Draw invincibilty
if(invincible) {
	var alpha = min(1, alarm[1] / 60);
	draw_sprite_ext(spr_ship_powerups_strip6, powerups.invincible, x, y, 
		image_xscale, image_yscale, image_angle, image_blend, alpha);
}