// At the beginning of each frame, update the player object
// to match the global to ensure any fields are updated before
// the "Step" event.
player = global.player.player;
move_speed = player.speed;