gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle(0,0, room_width,room_height, false);

draw_set_alpha(image_alpha);
draw_rectangle(obj_battlebox._x1, obj_battlebox._y1, obj_battlebox._x2, obj_battlebox._y2, false);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_self();
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);

draw_set_alpha(1);