/// @description Check if the sound should be played depending on the global variable
/// @arg _snd
/// @arg _priority
/// @arg _loop

function check_sound(_snd, _priority, _loop) {
	if global.sound audio_play_sound(_snd, _priority, _loop);
}