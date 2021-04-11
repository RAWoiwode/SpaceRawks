/// @description Game controller

score = 0;
lives = 3;
levelStarted = false;
global.asteroids = 0;
global.raiders = 0;
global.brutes = 0;
global.hunters = 0;
global.destroyedAsteroids = 0;
global.destroyedRaiders = 0;
global.destroyedBrutes = 0;
global.destroyedHunters = 0;
spawnRate = 4;

// Music
musicButtonX = 465;
musicButtonY = 465;
soundButtonX = 465;
soundButtonY = 445;
music = 1;
global.sound = 1;
audio_play_sound(mscBurning, 0, 1);
audio_sound_gain(mscBurning, 0.5, 0);


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