/*Draws the assigned sprite like default "Draw" event but allows
* for the sprite to be updated dynamically for any changes made
* to the sprite's instance variables
*/
draw_self();
//Force HUD elements to be a static width and height.
display_set_gui_size(528, 600);
draw_set_font(fnt_game); 
draw_set_colour(c_yellow);
draw_set_valign(fa_middle);

// Variables
var small_box_text_start = 7  // based on sprite
var large_box_text_start = 71 // based on sprite
var text_row_full_buffer = 17
var text_row_partial_buffer = 12
var text_row_1 = y + text_row_partial_buffer
var text_row_2 = text_row_1 + text_row_full_buffer
var text_row_3 = text_row_2 + text_row_full_buffer

// Level & Experience
draw_text(small_box_text_start, text_row_1, "Lvl.:" + string(global.player.player.level));
draw_text(small_box_text_start, text_row_2, "Exp.:");
draw_text(small_box_text_start, text_row_2 + text_row_partial_buffer, string(global.player.player.exp) + "/" + string(global.level_curve[global.player.player.level-1]));

// Player Stats
draw_text(large_box_text_start, text_row_1, "Health:" + string(global.player.player.hp) + "/" + string(global.player.player.hpMax))
draw_text(large_box_text_start, text_row_2, "Attack Element:" + global.element_names[global.player.player.element])
draw_text(large_box_text_start, text_row_3, "Attack Speed:" + string(global.player.potion_atk.atk_speed))

// Level up banner
if global.leveled_up {
    timer++;
    if timer < time {
        draw_text(x + 200, y + 12, "Level up!");    
    } else {
        timer = 0
        global.leveled_up = false
    }
}




draw_set_valign(fa_top);

