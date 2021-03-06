///scr_move_state

scr_get_input();

if (dash_key && obj_player_stats.stamina >= DASH_COST) {
    state = scr_dash_state;
    alarm[0] = room_speed/6;
    obj_player_stats.stamina -= DASH_COST;
    obj_player_stats.alarm[0] = room_speed;
}

if (fireball_key && obj_player_stats.stamina >= FIREBALL_COST) {
    state = scr_fireball_state;
    }

if (attack_key) {
    image_index = 0;
    state = scr_attack_state;
}

// Get the Axis
var xaxis = (right_key - left_key);
var yaxis = (down_key - up_key);

// Get Direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get Length
if (xaxis == 0 && yaxis == 0) {
    len = 0;
} else {
    len = spd;
    scr_get_face();
}

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the Sprite
image_speed = 0.2;
if (len == 0) {
    image_index = 0;
}

switch (face) {
    case RIGHT:
        sprite_index = spr_player_right;
        break;
        
    case UP:
        sprite_index = spr_player_up;
        break;
    
    case DOWN:
        sprite_index = spr_player_down;
        break;
    
    case LEFT:
        sprite_index = spr_player_left;
        break;
}

