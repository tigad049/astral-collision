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

// WHY DOES THIS WORK
keybind_pressed(vk_left, function() {soul_move("left")})
keybind_pressed(vk_right, function() {soul_move("right")})
keybind_pressed(vk_up, function() {soul_move("up")})
keybind_pressed(vk_down, function() {soul_move("down")})

keybind_released(vk_left, function() {left_held = false; if right_held {soul_move("right")} else {hspeed = 0}})
keybind_released(vk_right, function() {right_held = false; if left_held {soul_move("left")} else {hspeed = 0}})
keybind_released(vk_up, function() {up_held = false; if down_held {soul_move("down")} else {vspeed = 0}})
keybind_released(vk_down, function() {down_held = false; if up_held {soul_move("up")} else {vspeed = 0}})

keybind_pressed(ord("A"), function() {soul_move("left")})
keybind_pressed(ord("D"), function() {soul_move("right")})
keybind_pressed(ord("W"), function() {soul_move("up")})
keybind_pressed(ord("S"), function() {soul_move("down")})

keybind_released(ord("A"), function() {left_held = false; if right_held {soul_move("right")} else {hspeed = 0}})
keybind_released(ord("D"), function() {right_held = false; if left_held {soul_move("left")} else {hspeed = 0}})
keybind_released(ord("W"), function() {up_held = false; if down_held {soul_move("down")} else {vspeed = 0}})
keybind_released(ord("S"), function() {down_held = false; if up_held {soul_move("up")} else {vspeed = 0}})


//keybind_released(vk_left, function() {left_held = false; hspeed = 0})
//keybind_released(vk_right, function() {right_held = false; hspeed = 0})
//keybind_released(vk_up, function() {up_held = false; vspeed = 0})
//keybind_released(vk_down, function() {down_held = false; vspeed = 0})

keybind_pressed(ord("X"), function() {_speed =  _speed/2; speed = speed/2})
keybind_released(ord("X"), function() {_speed =  _speed*2; speed = speed*2})
keybind_pressed(vk_shift, function() {_speed =  _speed/2; speed = speed/2})
keybind_released(vk_shift, function() {_speed =  _speed*2; speed = speed*2})