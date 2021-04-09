/// @description Scoreboard
switch(room) {
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		draw_sprite(sprMusic, music, 475, 40);
		break;
	case rm_start:
		draw_sprite(sprMusic, music, 475, 40);
		if (!instance_exists(objMusicBtn)) instance_create_layer(400, 20, "Instances", objMusicBtn);
		draw_set_halign(fa_center)
		var c = c_yellow
		draw_text_transformed_color(
			room_width/2, 100,
			"SPACE ROCKS", 3, 3, 0, 
			c, c, c, c, 1
		);
		draw_text(
			room_width / 2, 
			200, 
			"Score 1,000 points to win!\n\n" +
				"UP: Move\n" +
				"LEFT/RIGHT: Change direction\n" +
				"SPACE: Shoot\n\n" +
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