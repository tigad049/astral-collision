font_add_enable_aa(false);
global.dtm_mono_font = font_add("DTM-Mono.otf", 20, false, false, 32, 128);
global.dtm_sans_font = font_add("DTM-Sans.otf", 20, false, false, 32, 128);
global.mnc_font = font_add("MNC.ttf", 18, false, false, 32, 128);
global.sw = window_get_width();
global.sh = window_get_height();
global.scx = global.sw/2;
global.scy = global.sh/2;

// 0 = player's turn, 1 = enemy's turn
global.battle_state = 0;

global.plr_name = "GASTER";
global.plr_hp_max = 20;
global.plr_lvl = 1;

audio_play_sound(mus_astralcollision, 0, true);
//audio_play_sound(mus_gameover, 0, true, 1, 0, 0.925);