draw_set_font(_font)
if not (i >= string_length(str)) {
	var strcpy = string_copy(str, 1, i);
	draw_text(_x, _y, strcpy);
	audio_play_sound(self.snd, 0, false, 0.5);
	i++;
} else {
	draw_text(_x, _y, str);
}