// MOVEMENT CODE ========================
if (global.battle_state == 1) {
	/**
	 * Moves the soul in a direction
	 * @param {string} dir Direction
	 */
	function soul_move(dir) {
		var batlbox = obj_battlebox;
		switch (dir) {
			case "left":
				left_held = true;
				if collision_line(batlbox._x1+4, batlbox._y1+4, batlbox._x1+4, batlbox._y2-4, self, true, false) {
					break;
				} else if right_held {
					hspeed = 0;
				} else {
					hspeed = -_speed;
				}
			break;
			
			case "right":
				right_held = true;
				if collision_line(batlbox._x2-5, batlbox._y1+4, batlbox._x2-5, batlbox._y2-4, self, true, false) {
					break;
				} else if left_held {
					hspeed = 0;
				} else {
					hspeed = _speed;
				}
			break;
			
			case "up":
				up_held = true;
				if collision_line(batlbox._x1+4, batlbox._y1+4, batlbox._x2-4, batlbox._y1+4, self, true, false) {
					break;
				} else if down_held {
					vspeed = 0;
				} else {
					vspeed = -_speed;
				}
			break;
			
			case "down":
				down_held = true;
				if collision_line(batlbox._x1+4, batlbox._y2-5, batlbox._x2-4, batlbox._y2-5, self, true, false) {
					break;
				} else if up_held {
					vspeed = 0;
				} else {
					vspeed = _speed;
				}
			break;
		}
	}
	
	if (global.key_left_pressed) {soul_move("left")}
	if (global.key_right_pressed) {soul_move("right")}
	if (global.key_up_pressed) {soul_move("up")}
	if (global.key_down_pressed) {soul_move("down")}
	
	if (global.key_left_released) {left_held = false; if right_held {soul_move("right")} else {hspeed = 0}}
	if (global.key_right_released) {right_held = false; if left_held {soul_move("left")} else {hspeed = 0}}
	if (global.key_up_released) {up_held = false; if down_held {soul_move("down")} else {vspeed = 0}}
	if (global.key_down_released) {down_held = false; if up_held {soul_move("up")} else {vspeed = 0}}
	
	if (global.key_cancel_pressed) {_speed =  _speed/2; speed = speed/2}
	if (global.key_cancel_released) {_speed =  _speed*2; speed = speed*2}
}

// UI CODE ==============================
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
}