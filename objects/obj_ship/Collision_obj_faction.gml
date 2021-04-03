/// @description Ship Collision

// Check if obj is member of our faction
if(other.faction == faction) exit;
else if(invincible) {
	with(other) {
		event_perform(ev_other, ev_user1);
	}
	exit;
}
event_perform(ev_other, ev_user1);