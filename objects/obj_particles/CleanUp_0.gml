/// @description Destroy Particle System
part_system_destroy(partSys);

// Make sure to add any other particle type created in the future
part_type_destroy(partTypePlayerExhaust);
part_type_destroy(partTypeEnemyExhaust);
part_type_destroy(partTypeAsteroidDebris);
part_type_destroy(partTypeShipDebris);