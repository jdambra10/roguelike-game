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
draw_text(x + 7, y + 12, "Lvl.:" + string(global.player.player.level));
draw_text(x + 7, y + 29, "Exp.:");
draw_text(x + 7, y + 41, string(global.player.player.exp) + "/" + string(global.level_curve[global.player.player.level-1]));


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

