_speed = 4.0;
soul_mode = 0;
// 0 = red, 1 = blue
left_held = false;
right_held = false;
up_held = false;
down_held = false;

function update_ui_pos() {
	if (global.battle_state == 0) {
		if object_exists(obj_battlemenu) {
			if obj_battlemenu.menu_state == 0 {
				y = 454;
				switch (obj_battlemenu.button_select) {
					case 1:
						x = 49;
						break;
				
					case 2:
						x = 202;
						break;
				
					case 3:
						x = 362;
						break;
				
					case 4:
						x = 517;
						break;
				}
			} else if obj_battlemenu.menu_state == 1 {
				switch (obj_battlemenu.menu_option_select[0]) {
					case 0:
						x = 73;
						break;
					case 1:
						x = (global.scx-12)+21;
						break;
				}
			
				switch (obj_battlemenu.menu_option_select[1]) {
					case 0:
						y = 287;
						break;
					case 1:
						y = 287+32;
						break;
					case 2:
						y = 287+64;
						break;
				}
			}
		}
		draw_self();
	}
}