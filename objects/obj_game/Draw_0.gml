draw_set_font(global.dtm_mono_font);
draw_text(52, 270, "* Star reluctantly inches forth!");
// seems to be just x1+20 and y1+20 for dialogue boxes

draw_set_font(global.mnc_font);
//draw_text(30, 400, "FRISK   LV 1");
draw_text(30, 400, string_concat(global.plr_name, "   LV ", global.plr_lvl));
// {player name} + three spaces + LV {lvl}