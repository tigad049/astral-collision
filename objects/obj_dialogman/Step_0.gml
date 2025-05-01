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