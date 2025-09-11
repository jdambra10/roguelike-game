/* Event: On collision with WallObj */

var room_center_x = room_width / 2;
var room_center_y = room_height / 2;

// Lazily move position towards center of room

// TODO Do actual math to make this smoother later
// (calculate hypotenuse of right triangle between edge of game and
// slide enemy towards the center)

// Move sprite left or right
if (x > room_center_x) { x = x - sprite_width; show_debug_message($"slid sprite {self.id} left") }
    else { x = x + sprite_width; show_debug_message($"slid sprite {self.id} right") };
// Move sprite up or down
if (y > room_center_y) { y = y - sprite_width; show_debug_message($"slid sprite {self.id} up") }
    else { y = y + sprite_width; show_debug_message($"slid sprite {self.id} down") };