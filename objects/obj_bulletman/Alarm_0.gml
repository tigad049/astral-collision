if global.battle_state == 1 {
    if pattern == 0 { // simple bullets
    	instance_create_layer(random_range(bbox1, bbox2), 250, "Instances", obj_bullet);
    	alarm[0] = 20;
    }
    
    if pattern == 1 { // hammer L & R
        // instance_create_layer(random_range(bbox1, bbox2), 250, "Instances", obj_bullet);
    	// alarm[0] = 10;
        instance_create_layer(global.scx+64, 290-128, "Instances", obj_hammer)
    }
    
    if pattern == 2 { // lightning attack
        instance_create_layer(random_range(bbox1, bbox2), 250, "Instances", obj_bullet);
    	alarm[0] = 5;
    }
}