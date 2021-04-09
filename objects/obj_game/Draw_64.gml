/// @description Scoreboard
switch(room) {
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		draw_sprite(sprMusic, music, musicButtonX, musicButtonY);
		draw_sprite_ext(
			sprSound, global.sound, 
			soundButtonX, soundButtonY, 
			0.5, 0.5, 0, c_white, 1
		);
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