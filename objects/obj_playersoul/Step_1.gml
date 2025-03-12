var soul = self;
if object_exists(obj_battlebox) {
	with obj_battlebox {
		/* 
			would've loved to combine these if checks but there's a bug with
			the movement code where if you're on one side and move to the other
			(eg, on the left wall, moving to the right) this code would run and
			remove speed unintentionally
		*/
		
		// upper line
		if collision_line(_x1+4, _y1+4, _x2-4, _y1+4, soul, true, false) {
			soul.vspeed = 0;
		}
		
		// bottom line
		if collision_line(_x1+4, _y2-5, _x2-4, _y2-5, soul, true, false) {
			soul.vspeed = 0;
		}
		
		// left side
		if collision_line(_x1+4, _y1+4, _x1+4, _y2-4, soul, true, false) {
			soul.hspeed = 0;
		}
		
		// right side
		if collision_line(_x2-5, _y1+4, _x2-5, _y2-5, soul, true, false) {
			soul.hspeed = 0;
		}
	}
}