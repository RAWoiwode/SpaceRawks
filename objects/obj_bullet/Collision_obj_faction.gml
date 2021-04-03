/// @description Bullet hits something

// If the bullet hits who fired it
if(other.id == creator) exit;

instance_destroy();

// Check if object is part of our faction
if(other.faction == faction) exit;

// Damage object
with(other) event_perform(ev_other, ev_user1);