//setposition;setpos|NUMBER,NUMBER^Moves the player to the given position.
var x = Number(args[1])
var y = Number(args[2])
var new_x = x + _root.Course.BackGFX._x
var new_y = y + _root.Course.BackGFX._y
_root.Course.Char._x = new_x
_root.Course.Char._y = new_y
respond("Moved player to (" + x + ", " + y + ").");