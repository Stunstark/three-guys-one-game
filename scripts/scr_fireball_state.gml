/// Player Launches Fireball

if (len == 0) {
    dir = face*90;
}

len = spd*4;


// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

switch (sprite_index) {
    case spr_player_down:
        instance_create;
        break;
    
    case spr_player_up:
        sprite_index = spr_player_attack_up;
        break;
        
    case spr_player_left:
        sprite_index = spr_player_attack_left;
        break;
        
    case spr_player_right:
        sprite_index = spr_player_attack_right;
        break;
}
