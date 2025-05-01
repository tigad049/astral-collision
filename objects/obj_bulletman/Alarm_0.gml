if global.battle_state == 1 {
	instance_create_layer(random_range(bbox1, bbox2), 250, "Instances", obj_bullet);
	alarm[0] = 20;
}