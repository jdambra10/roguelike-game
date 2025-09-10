/* objEnemySpawner: Alarm 0
   Reference: https://codecreateplay.com/spawning-enemies-gamemaker/
*/

// Try to spawn enemies up to the max
if (instance_number(EnemyObj) < max_enemies) {

    // Generate coordinate pair
    var spawn_coord_x = irandom_range(0, room_width);
    var spawn_coord_y = irandom_range(0, room_height);
    show_debug_message($"[objEnemySpawner::Alarm0] Attempting to spawn enemy at {spawn_coord_x}, {spawn_coord_y}")

    // Spawn an enemy only if it would not collide with something else
    // TODO: this check needs to be done on enemy obj creation
    //       to ensure that the whole object's collision mask doesn't overlap
    //       with an existing entity.
    //       Maybe move to EnemyObj::Create?
    if ! (position_meeting(spawn_coord_x, spawn_coord_y, all)) {
        // Spawn enemy
        var spawned = instance_create_layer(spawn_coord_x, spawn_coord_y, layer, EnemyObj);
        show_debug_message($"[objEnemySpawner::Alarm0] Spawned enemy ${spawned.id} at {spawn_coord_x}, {spawn_coord_y}")
    }

} else {

    show_debug_message($"[objEnemySpawner::Alarm0] The room is saturated, not spawning more enemies.")

    if (spawn_rate_scale == 1) {
        show_debug_message($"[objEnemySpawner::Alarm0] Decreasing spawn rates.")
        spawn_rate_scale = 0.5
    }

}

    // Re-trigger alarm 0 at rate between low and high values set in Create event
    alarm_set(0, irandom_range(spawn_rate_low / spawn_rate_scale,
                               spawn_rate_high / spawn_rate_scale));