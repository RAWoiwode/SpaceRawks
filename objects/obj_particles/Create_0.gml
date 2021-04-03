/// @description Initialize particles
partSys = part_system_create();

// Exhaust
partTypePlayerExhaust = part_type_create();
part_type_alpha3(partTypePlayerExhaust, 1, 1, 0); // Exhaust transparency
part_type_color3(partTypePlayerExhaust, c_white, c_maroon, c_purple); // Exhaust color
part_type_life(partTypePlayerExhaust, 20, 20); // Exhaust lifetime
part_type_size(partTypePlayerExhaust, 0.4, 0.4, 0.05, 0); // Exhaust size
part_type_sprite(partTypePlayerExhaust, spr_exhaust, false, false, false); // Exhaust sprite

partTypeEnemyExhaust = part_type_create();
part_type_alpha3(partTypeEnemyExhaust, 1, 1, 0);
part_type_color3(partTypeEnemyExhaust, c_yellow, c_orange, c_red);
part_type_life(partTypeEnemyExhaust, 20, 20);
part_type_size(partTypeEnemyExhaust, 0.4, 0.4, 0.05, 0);
part_type_sprite(partTypeEnemyExhaust, spr_exhaust, false, false, false);

// Debris
partTypeAsteroidDebris = part_type_create();
part_type_alpha3(partTypeAsteroidDebris, 0.8, 0.88, 0); // Debris transparency
part_type_direction(partTypeAsteroidDebris, 0, 359, 0, false); // Debris direction
part_type_life(partTypeAsteroidDebris, 60, 80); // Debris lifetime
part_type_orientation(partTypeAsteroidDebris, 0, 359, 1, false, false); // Debris orientation
part_type_speed(partTypeAsteroidDebris, 2, 2.4, -0.02, 0); // Debris speed
part_type_sprite(partTypeAsteroidDebris, spr_asteroid_debris_strip4, false, false, true); // Debris sprite

partTypeShipDebris = part_type_create();
part_type_alpha3(partTypeShipDebris, 0.6, 0.6, 0);
part_type_direction(partTypeShipDebris, 0, 359, 0, false);
part_type_life(partTypeShipDebris, 60, 80);
part_type_orientation(partTypeShipDebris, 0, 359, 1, false, false);
part_type_size(partTypeShipDebris, 0.5, 1, 0, 0);
part_type_speed(partTypeShipDebris, 3, 4, -0.05, 0);
part_type_sprite(partTypeShipDebris, spr_ship_debris_strip5, false, false, true);