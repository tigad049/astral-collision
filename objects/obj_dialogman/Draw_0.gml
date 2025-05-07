draw_set_font(_font)
if not (i >= string_length(str)) {
	var strcpy = string_copy(str, 1, i);
	draw_text(_x, _y, strcpy);
    if !(string_char_at(str, i) == "\u0020" or 
        string_char_at(str, i) == "\x01" or 
        string_char_at(str, i) == "\x02") or 
        !(old_i == i) {
        audio_play_sound(self.snd, 0, false, 1);
    }
    if !(waiting) { 
        if !(i > string_length(str)) {
            i++;
        }
    } else {
        wait--;
    }
    if ((string_char_at(str, i) == "\x02") and !(waiting)) {
        wait = 60;
        waiting = true;
    }
    if ((string_char_at(str, i) == "\x01") and !(waiting)) {
        wait = 30;
        waiting = true;
    }
    if waiting and (wait == 0) {
        waiting = false;
    }
} else {
	draw_text(_x, _y, str);
}
old_i = i;