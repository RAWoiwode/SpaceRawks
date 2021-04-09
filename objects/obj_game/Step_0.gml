/// @description Check key press and monitor room activity
if(keyboard_check_pressed(vk_enter)) {
	switch(room) {
		case rm_start:
			room_goto(rm_game);
			break;
		case rm_win:
		case rm_gameover:
			game_restart();
			break;
	}
}

if(room == rm_game) {
	
	// Player wins
	if(score >= 1000) {
		room_goto(rm_win);
		check_sound(snd_win, 1, false);
	}
	
	// Player runs out of lives
	if(lives <= 0) {
		room_goto(rm_gameover);
		check_sound(snd_lose, 1, false);
	}
}

// Music Logic
if (keyboard_check_pressed(ord("M"))) {
	music = !music;
	if (music) {
		audio_resume_sound(mscBurning);
	} else {
		audio_pause_sound(mscBurning);
	}
}

// SFX Logic
if (keyboard_check_pressed(ord("S"))) {
	global.sound = !global.sound;
}