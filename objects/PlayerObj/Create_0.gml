// Spawn the player object with the default stats.
player = global.player.player;
move_speed = player.speed;

// Not moving by default so set
x_speed = 0;
y_speed = 0;

// Default positioning when spawned.
x_pos = 200;
y_pos = 200;
face = DOWN;

// Initialize the attack cooldown.
// This is then completely controlled within the "Step" event.
potion_cooldown = false;