//camlock;cl|phSTATE^Enables or disables camera edge locking.
switch(phState(args[1]))
{
	case 0:
		_root.camlock = false
		respond("Camera Lock: OFF")
		break;
	case 1:
		_root.camlock = true
		respond("Camera Lock: ON")
		break;
	case -1:
		if(_root.camlock) {
			_root.camlock = false
			respond("Camera Lock: OFF [toggle]")
		} else {
			_root.camlock = true
			respond("Camera Lock: ON [toggle]")
		}
		break;
}