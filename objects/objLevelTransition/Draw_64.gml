/// @description Insert description here
if (!surface_exists(endLevelSurface)) {
	if (endLevelSurface == -1) {
		instance_deactivate_all(true); // Keep calling instance active
	}
	// Can use this section to create pause menu
	endLevelSurface = surface_create(room_width, room_height);
	surface_set_target(endLevelSurface);
	draw_surface(application_surface, 0, 0);
	surface_reset_target();
} else {
	draw_surface(endLevelSurface, 0, 0);
	// Draw a rectangle the size of the camera
	draw_set_alpha(0.5);
	draw_rectangle_color(0, 0, global.cameraWidth, global.cameraHeight, 
		c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
	draw_set_halign(fa_center);
	// Center text on the camera, not the room
	draw_text_transformed_color(global.cameraWidth / 2, global.cameraHeight / 2, 
		"Level Complete", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
	draw_set_halign(fa_left);
}