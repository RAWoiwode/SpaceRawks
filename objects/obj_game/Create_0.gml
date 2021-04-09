/// @description Game controller

score = 0;
lives = 3;

// Music
music = 1;
audio_play_sound(mscBurning, 0, 1);


draw_set_font(fnt_text); // Set different game font

randomize(); // Randomize seed each time the game runs so asteroids are random

// Enums are global
enum factions {
	neutral,
	ally,
	enemy
}

enum powerups {
	two_bullets,
	three_bullets,
	four_bullets,
	star_shot,
	laser,
	invincible
}