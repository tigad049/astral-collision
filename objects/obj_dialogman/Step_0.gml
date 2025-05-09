// this feels wrong. ~star
function dialog(_x, _y, str, font) {
	if not (_x == self._x and _y == self._y and str == self.str) {
		self._x = _x
		self._y = _y
		self.str = str
		self._font = font
		i = 0;
	}
}

function set_text_noise(snd) {
	self.snd = snd
}

function clear() {
	str = "";
	i = 0;
}

function set_delay(n) {
    if n <= 0 {delayed = false} else {delayed = true}
    delayn = n;
}

function set_halign(h) {
    _halign = h;
}

function set_valign(v) {
    _valign = v;
}

function skip() {
    i = string_length(str);
    wait = 0;
    waiting = false;
    delayed = false;
    delayn = 0;
}

function check_if_finished() {
    var finished = i >= string_length(str);
    return finished;
}