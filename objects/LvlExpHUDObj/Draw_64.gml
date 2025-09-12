/*Draws the assigned sprite like default "Draw" event but allows
* for the sprite to be updated dynamically for any changes made
* to the sprite's instance variables
*/
draw_self();
draw_set_font(fnt_game); 
draw_set_colour(c_yellow);
draw_set_valign(fa_middle);
draw_text(x + 7, y + 12, "Lvl.:69");
draw_set_valign(fa_top);