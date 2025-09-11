/* objEnemySpawner: Create
   Handles creation of enemies. */

/* Instance Variables */
// Clamp max number of enemies that can appear on screen at once
max_enemies = 10;

// Spawn rates (in game steps)
spawn_rate_low = 20;
spawn_rate_high = 80;
spawn_rate_scale = 1;  // Tweak this to increase or decrease spawn rates (0 will break spawn)

// Trigger alarm 0 for the first time two seconds (assuming 60fps) into the game
// (Gives player a chance to move around and get comfortable)
alarm_set(0, 120);  // steps
