bbox1 = (global.scx-(global.scx/4))+10;
bbox2 = (global.scx+(global.scx/4))-10;


function clear_bullets() {
    instance_destroy(obj_bullet);
    instance_destroy(obj_hammer);
    instance_destroy(obj_hammerwarning);
    instance_destroy(obj_hammerdebris);
}

pattern = 0;
function random_pattern() {
    // pattern = irandom(1);
    pattern = 1;
    
    if pattern == 0 {
        obj_battlebox.boxlerp(global.scx-(global.scx/4), 230, global.scx+(global.scx/4), 390, false);
    }
    
    if pattern == 1 {
        obj_battlebox.boxlerp(global.scx-(64), 370-128, global.scx+(64), 370, false);
        obj_playersoul.y = 320;
    }
    
    if pattern == 2 {
        obj_battlebox.boxlerp(global.scx-(128), 370-128, global.scx+(128), 370, false);
        obj_playersoul.y = 320;
    }
}