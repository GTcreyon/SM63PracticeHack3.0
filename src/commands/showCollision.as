//showcollision;shc|phSTATE^Makes collision visible as bright boxes.
var state = phState(args[1])
if (state == 1) {
	_root.collision.plats = true;
    _root.collision.hurt = true;
	respond("Show Collision: ON");
} else if (state == 0) {
	_root.collision.plats = false;
    _root.collision.hurt = false;
	respond("Show Collision: OFF");
} else if (state == -1) {
	_root.collision.plats = !_root.collision.plats;
    _root.collision.hurt = !_root.collision.plats;
	if(_root.collision.plats)
	{
		respond("Show Collision: ON [toggle]");
	} else {
		respond("Show Collision: OFF [toggle]");
	}
}