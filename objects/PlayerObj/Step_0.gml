var right_key = keyboard_check(vk_right); // pressed = true, unpressed = false
var left_key  = keyboard_check(vk_left);
var up_key    = keyboard_check(vk_up);
var down_key  = keyboard_check(vk_down);
var space_key = keyboard_check(vk_space);

x_speed = (right_key - left_key) * move_speed; // can edit move speed to adjust total speed
y_speed = (down_key - up_key) * move_speed;    // positive y direction is towards bottom, hence order

x_pos = PlayerObj.x;
y_pos = PlayerObj.y;

// Pause Movement
/*
if instance_exists(obj_pauser){
	x_speed = 0;
	y_speed = 0;
}
*/

// Set Sprite
// Putting this code block BEFORE "Collisions" allows the sprite to
// be based on the input, regardless of collision
// mask_index = sprite[DOWN];
if y_speed = 0 {
	if x_speed > 0 {face = RIGHT};
	if x_speed < 0 {face = LEFT};
}
if x_speed > 0 && face == LEFT {face = RIGHT};
if x_speed < 0 && face == RIGHT {face = LEFT};
if x_speed = 0 {
	if y_speed > 0 {face = DOWN};
	if y_speed < 0 {face = UP};
}
if y_speed > 0 && face == UP {face = DOWN};
if y_speed < 0 && face == DOWN {face = UP};
// Animate player sprite.
image_index = face;


// Collisions
if place_meeting(x + x_speed, y, WallObj) == true{
	x_speed = 0;
}
if place_meeting(x, y + y_speed, WallObj) == true{
	y_speed = 0;
}

// Move the player.
x += x_speed;
y += y_speed;


// Depth
depth = -bbox_bottom;


// Potion Attack
if space_key && !potion_cooldown {
	potion_cooldown = true;
	alarm[0] = 40;
	var potion_atk = instance_create_layer(x_pos, y_pos, "Instances", PotionObj, global.player.potion_atk);

    // Set angle of the sprite based on player's direction
    if (face == UP) {
        potion_atk.image_angle = 90
        potion_atk.y_speed = potion_atk.atk_speed
    } else if (face == DOWN) {
        potion_atk.image_angle = 270
        potion_atk.y_speed = potion_atk.atk_speed
    } else if (face == LEFT) {
        potion_atk.image_angle = 0
        potion_atk.x_speed = -potion_atk.atk_speed
    } else if (face == RIGHT) {
        potion_atk.image_angle = 0
        potion_atk.x_speed = potion_atk.atk_speed
    } 
    show_debug_message("[PlayerObj::Potion Attack] x_speed: " + string(potion_atk.x_speed) + " & y_speed: " + string(potion_atk.y_speed))
}