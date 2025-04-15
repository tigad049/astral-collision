draw_rectangle(_x1, _y1, _x2, _y2, true);
for (var i = 1; i < 5; i += 1;) {
	draw_rectangle(_x1+i, _y1+i, _x2-i, _y2-i, true);	
}

function boxlerp(x1, y1, x2, y2, _yfirst) {
	finished = false;
	oldx1 = _x1;
	oldy1 = _y1;
	oldx2 = _x2;
	oldy2 = _y2;
	
	newx1 = x1;
	newy1 = y1;
	newx2 = x2;
	newy2 = y2;
	
	elapsed = 0;
	yfirst = _yfirst;
	
	obj_playersoul.x = lerp(newx1, newx2, 0.5);
	obj_playersoul.y = lerp(newy1, newy2, 0.5);
	obj_game.alarm[0] = 200;
}

if yfirst {
	_x1 = lerp(oldx1, newx1, clamp((elapsed-0.5)*2, 0, 1));
	_x2 = lerp(oldx2, newx2, clamp((elapsed-0.5)*2, 0, 1));
	_y1 = lerp(oldy1, newy1, clamp(elapsed*2, 0, 1));
	_y2 = lerp(oldy2, newy2, clamp(elapsed*2, 0, 1));
} else {
	_x1 = lerp(oldx1, newx1, clamp(elapsed*2, 0, 1));
	_x2 = lerp(oldx2, newx2, clamp(elapsed*2, 0, 1));
	_y1 = lerp(oldy1, newy1, clamp((elapsed-0.5)*2, 0, 1));
	_y2 = lerp(oldy2, newy2, clamp((elapsed-0.5)*2, 0, 1));
}
elapsed += (delta_time / 1000000);
if (elapsed > 1) {elapsed = 1}
if (elapsed == 1 and finished == false) {
	obj_game.finished_boxlerp();
}

// boxlerp(global.scx-(global.scx/4), 260, global.scx+(global.scx/4), 420, false);
// boxlerp(32, 250, 606, 389, true);