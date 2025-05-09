draw_set_font(_font)
draw_set_halign(_halign)
draw_set_valign(_valign)
if not (i >= string_length(str)) {
    if ((string_char_at(str, i) == "\x02") and !waiting) {
        wait = 60;
        waiting = true;
    }
    if ((string_char_at(str, i) == "\x01") and !waiting) {
        wait = 30;
        waiting = true;
    }
    if ((string_char_at(str, i) == "\x03") and !waiting) {
        wait = 15;
        waiting = true;
    }
    if delayed and (delayn > 0) and !waiting {
        waiting = true;
        wait = delayn;
    }
    if waiting and (wait == 0) {
        waiting = false;
    }
    
    if !(waiting) { 
        if !(i > string_length(str)) {
            i++;
            played_snd = false;
        }
    } else {
        wait--;
    }
	var strcpy = string_copy(str, 1, i);
	draw_text(_x, _y, strcpy);
    if !(string_char_at(str, i) == "\u0020" or
        string_char_at(str, i) == "\x01" or 
        string_char_at(str, i) == "\x02" or
        string_char_at(str, i) == "\x03") and 
    !played_snd { 
        audio_play_sound(self.snd, 0, false, 1); 
        played_snd = true;
    }
} else {
	draw_text(_x, _y, str);
}