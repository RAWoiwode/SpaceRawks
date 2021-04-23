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

if (room == rm_game) {
	
	// Player wins
	if(score >= 1000) {
		room_goto(rm_win);
		check_sound(snd_win, 1, false);
	}
	
	if (check_level_completed()) {
		room = rm_game2;
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

// Pause the game
if (room == rm_game) {
	if (keyboard_check_pressed(ord("P"))) {
		paused = !paused;
		if (!paused) {
			instance_activate_all();
			surface_free(pausedSurface);
			pausedSurface = -1;
		}
	}
	if (paused) {
		alarm[0]++; // Alarms coutn down by one each step; To pause, we add 1 each step
		alarm[1]++;
	}
}