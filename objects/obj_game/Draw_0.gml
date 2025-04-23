draw_set_font(global.font_mnc);
//draw_text(30, 400, "FRISK   LV 1");
draw_text(30, 400, string_concat(global.plr_name, "   LV ", global.plr_lvl));
// {player name} + three spaces + LV {lvl}

draw_set_font(global.font_8bw);
draw_text(243, 402, "H");
draw_text(243+14, 402, "P");