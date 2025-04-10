draw_set_font(global.font_mnc);
//draw_text(30, 400, "FRISK   LV 1");
draw_text(30, 400, string_concat(global.plr_name, "   LV ", global.plr_lvl));
// {player name} + three spaces + LV {lvl}