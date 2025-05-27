bbox1 = (global.scx-(global.scx/4))+10;
bbox2 = (global.scx+(global.scx/4))-10;


function clear_bullets() {
    instance_destroy(obj_bullet);
}

pattern = 0;
function random_pattern() {
    pattern = irandom(2);
    
    if pattern == 0 {
        obj_battlebox.boxlerp(global.scx-(global.scx/4), 230, global.scx+(global.scx/4), 390, false);
    }
    
    if pattern == 1 {
        obj_battlebox.boxlerp(global.scx-(global.scx/2), 230, global.scx+(global.scx/2), 300, false);
    }
    
    if pattern == 2 {
        obj_battlebox.boxlerp(global.scx-(global.scx/3), 230, global.scx+(global.scx/3), 350, false);
    }
}