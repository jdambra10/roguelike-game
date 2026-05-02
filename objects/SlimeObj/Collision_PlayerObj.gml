// Damage the player upon contact.
// Need to have a cooldown to prevent constant damage
// each frame enemy is in contact with the player.
if !attack_cooldown {
    attack_cooldown = true;
    alarm[0] = 40;
}