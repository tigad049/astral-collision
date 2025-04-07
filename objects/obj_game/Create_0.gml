font_add_enable_aa(false);
global.font_dtm_mono = font_add("DTM-Mono.otf", 20, false, false, 32, 128);
global.font_dtm_sans = font_add("DTM-Sans.otf", 20, false, false, 32, 128);
global.font_mnc = font_add("MNC.ttf", 18, false, false, 32, 128);
global.sw = window_get_width();
global.sh = window_get_height();
global.scx = global.sw/2;
global.scy = global.sh/2;

// 0 = player's turn, 1 = enemy's turn
global.battle_state = 0;

global.plr_name = "GASTER";
global.plr_hp_max = 20;
global.plr_lvl = 1;
global.plr_items = [7827, 7827, 7827, 7827];

audio_play_sound(mus_astralcollision, 0, true);
//audio_play_sound(mus_gameover, 0, true, 1, 0, 0.925);