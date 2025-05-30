global.key_left = keyboard_check(vk_left) || keyboard_check(ord("A"))
global.key_right = keyboard_check(vk_right) || keyboard_check(ord("D"))
global.key_up = keyboard_check(vk_up) || keyboard_check(ord("W"))
global.key_down = keyboard_check(vk_down) || keyboard_check(ord("S"))
global.key_confirm = keyboard_check(vk_enter) || keyboard_check(ord("Z"))
global.key_cancel = keyboard_check(vk_shift) || keyboard_check(ord("X"))
global.key_menu = keyboard_check(vk_control) || keyboard_check(ord("C"))

global.key_left_pressed = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"))
global.key_right_pressed = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))
global.key_up_pressed = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
global.key_down_pressed = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
global.key_confirm_pressed = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z"))
global.key_cancel_pressed = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X"))
global.key_menu_pressed = keyboard_check_pressed(vk_control) || keyboard_check_pressed(ord("C"))

global.key_left_released = keyboard_check_released(vk_left) || keyboard_check_released(ord("A"))
global.key_right_released = keyboard_check_released(vk_right) || keyboard_check_released(ord("D"))
global.key_up_released = keyboard_check_released(vk_up) || keyboard_check_released(ord("W"))
global.key_down_released = keyboard_check_released(vk_down) || keyboard_check_released(ord("S"))
global.key_confirm_released = keyboard_check_released(vk_enter) || keyboard_check_released(ord("Z"))
global.key_cancel_released = keyboard_check_released(vk_shift) || keyboard_check_released(ord("X"))
global.key_menu_released = keyboard_check_released(vk_control) || keyboard_check_released(ord("C"))

if (global.plr_hp <= 0) and (global.plr_dead == false) {
    global.plr_dead = true;
    if (global.plr_hp < 0) {
        global.plr_hp = 0;
    }
    alarm[1] = 2;
}

if keyboard_check_pressed(vk_f7) {
    game_restart();
}

if (room == rm_battle) and (spawned_star == false) {
    var star = instance_create_depth(global.scx, 135, 100, obj_star);
    star.image_speed = 0;
    spawned_star = true;
}