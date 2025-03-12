/// @function							keybind(key, func)
/// @description						Binds keys to functions
/// @param {Constant.VirtualKey} key	Key to bind function to
/// @param {function} func				Function to be called
function keybind(key, func) {
	if keyboard_check(key) {
		func()
	}
}