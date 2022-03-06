//resetroom;reset;rr^Resets the room from the current position.
var x = _root.Course.Char._x - _root.Course.FrontGFX._x
var y = _root.Course.Char._y - _root.Course.FrontGFX._y
_root.changecourse(_root.playingcourse, x, y, x, y)