if global.battle_state == 1 {
    if pattern == 0 { // simple bullets
    	instance_create_layer(random_range(bbox1, bbox2), 250, "Instances", obj_bullet);
    	alarm[0] = 20;
    }
    
    if pattern == 1 { // hammer L & R
        // instance_create_layer(random_range(bbox1, bbox2), 250, "Instances", obj_bullet);
    	// alarm[0] = 10;
        var xx = 1;
        if irandom(1) == 0 {
            xx = -1
        }
        var warning = instance_create_layer(global.scx+(32*xx), 370-64, "Instances", obj_hammerwarning);
        if xx == -1 {
            warning.flip = true;
        }
        alarm[0] = 50;
    }
    
    if pattern == 2 { // lightning attack
        // instance_create_layer(random_range(bbox1, bbox2), 250, "Instances", obj_bullet);
    	// alarm[0] = 5;
    }
}