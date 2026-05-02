//If enemy spawns

/*Hard coded to slime right now but will be auto-populated
by whatever mob gets pulled from the pool */
Enemy = variable_clone(global.tier_1_enemies.slime);

// Initialize attack cooldown.
// This is then completely controlled within the "Step" event.
attack_cooldown = false;
