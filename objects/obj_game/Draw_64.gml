/// @description Scoreboard
switch(room) {
	case rm_game:
		draw_text(20, 10, "SCORE: " + string(score));
		draw_text(20, 25, "LIVES: " + string(lives));
		draw_text(20, 40, "Asteroids: " + 
			string(global.destroyedAsteroids) + "/" + string(global.asteroids)
		);
		draw_text(20, 55, "Raiders: " + 
			string(global.destroyedRaiders) + "/" + string(global.raiders)
		);
		draw_text(20, 70, "Brutes: " + 
			string(global.destroyedBrutes) + "/" + string(global.brutes)
		);
		draw_text(20, 85, "Hunters: " + 
			string(global.destroyedHunters) + "/" + string(global.hunters)
		);
		draw_sprite(sprMusic, music, musicButtonX, musicButtonY);
		draw_sprite_ext(
			sprSound, global.sound, 
			soundButtonX, soundButtonY, 
			0.5, 0.5, 0, c_white, 1
		);
		
		// Pause
		if (paused) {
			if (!surface_exists(pausedSurface)) {
				if (pausedSurface == -1) {
					instance_deactivate_all(true); // Keep calling instance active
				}
				// Can use this section to create pause menu
				pausedSurface = surface_create(room_width, room_height);
				surface_set_target(pausedSurface);
				draw_surface(application_surface, 0, 0);
				surface_reset_target();
			} else {
				draw_surface(pausedSurface, 0, 0);
				// Draw a rectangle the size of the camera
				draw_set_alpha(0.5);
				draw_rectangle_color(0, 0, global.cameraWidth, global.cameraHeight, c_black, c_black, c_black, c_black, false);
				draw_set_alpha(1);
				draw_set_halign(fa_center);
				// Center text on the camera, not the room
				draw_text_transformed_color(global.cameraWidth / 2, global.cameraHeight / 2, "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
				draw_set_halign(fa_left);
			}
		}
		break;
	case rm_game2:
		draw_text(20, 20, "TEST: " + string(score));
		break;
	case rm_start:
		draw_sprite(sprMusic, music, musicButtonX, musicButtonY);
		draw_sprite_ext(
			sprSound, global.sound, 
			soundButtonX, soundButtonY, 
			0.5, 0.5, 0, c_white, 1
		);
		draw_set_halign(fa_center);
		draw_text(
			room_width / 2, 
			250, 
			"Score 1,000 points to win!\n\n" +
				"UP: Move\n" +
				"LEFT/RIGHT: Change direction\n" +
				"SPACE: Shoot\n\n" +
				"M: Toggle Music\n" +
				"S: Toggle Sound FX\n\n" +
				">> PRESS ENTER TO START <<"
		);
		draw_set_halign(fa_left)
		break;
	case rm_win:
		draw_set_halign(fa_center)
		var c = c_lime
		draw_text_transformed_color(
			room_width / 2, 200,
			"YOU WON!", 3, 3, 0, 
			c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 300,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left)
		break;
	case rm_gameover:
		draw_set_halign(fa_center);
		var c = c_red;
		draw_text_transformed_color(
			room_width / 2, 150,
			"GAME OVER!", 3, 3, 0, 
			c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 250,
			"FINAL SCORE " + string(score)
		);
		draw_text(
			room_width / 2, 300,
			"PRESS ENTER TO RESTART"
		);
		draw_set_halign(fa_left);
		break;
}