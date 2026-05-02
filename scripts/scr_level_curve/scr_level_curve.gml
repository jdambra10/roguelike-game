global.level_curve = [
    10, // level 2
    20, // level 3
    40, // level 4
    60, // level 5
]

global.leveled_up = false

/// @fuction                player_gain_exp(experience);
/// @pram {real} experience How much experience was gained
function player_gain_exp(experience){
    global.player.player.exp += experience
    if (global.player.player.exp >= global.level_curve[global.player.player.level-1]){
        global.player.player.exp -= global.level_curve[global.player.player.level-1]
        global.player.player.level++;
        global.leveled_up = true
    }
}