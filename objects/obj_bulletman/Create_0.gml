bbox1 = (global.scx-(global.scx/4))+10;
bbox2 = (global.scx+(global.scx/4))-10;


function clear_bullets() {
    instance_destroy(obj_bullet);
}

pattern = 0;
function random_pattern() {
    pattern = irandom(2);
}