font_add_enable_aa(false);
global.dtm_mono_font = font_add("DTM-Mono.otf", 20, false, false, 32, 128);
global.sw = window_get_width();
global.sh = window_get_height();
global.scx = global.sw/2;
global.scy = global.sh/2;

audio_play_sound(mus_astralcollision, 0, true);
//audio_play_sound(mus_gameover, 0, true, 1, 0, 0.925);