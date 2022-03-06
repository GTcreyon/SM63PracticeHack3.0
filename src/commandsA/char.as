//char|OPTION[mario/luigi/toggle]^Switches to the given character.
switch (args[1].toLowerCase()) {
	case "mario":
	case "m":
		_root.CurrentPlayer = "Mario";
		break;
	case "luigi":
	case "l":
		_root.CurrentPlayer = "Luigi";
		break;
	default:
		if (_root.CurrentPlayer == "Mario") {
			_root.CurrentPlayer = "Luigi";
		} else {
			_root.CurrentPlayer = "Mario";
		}
		break;
	if (_root.CurrentPlayer == "Mario") {
		respond("Character switched to Mario.");
	} else {
		respond("Character switched to Luigi.");
	}
}