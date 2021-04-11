/// @description Spawn asteroids
if(room != rm_game) exit;

//spawn_off_camera(obj_asteroid, 1); // Keep spawning asteroids

// Spawn asteroids and enemies
spawn_asteroid();
spawn_raider();
spawn_brute();
spawn_hunter();

alarm[0] = spawnRate * room_speed;