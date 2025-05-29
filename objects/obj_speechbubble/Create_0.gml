obj_dialogman.set_color(c_black);
obj_dialogman.set_text_noise(snd_txt1);

str = "";

if not (global.talk == "") {
    str = gettext(global.talk);
} else if global.reasoned {
    str = gettext("btl_stardiag_5")
} else if global.progress == 3 {
    str = gettext("btl_stardiag_4");
} else if global.progress == 2 {
    str = gettext("btl_stardiag_6");
} else {
    str = gettext(string_concat("btl_stardiag_", irandom_range(1, 3)));
}

obj_dialogman.dialog(x+24, y-45, str, global.font_dtm_mono_small);
alarm[0] = 30*3;