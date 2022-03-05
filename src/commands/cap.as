//cap|OPTION[invincible/vanish/metal/wing/none]|phSTATE|*TIME^Sets the state of the caps the player currently has.', 'cap TYPE {true|false} TIME', function(command) {
switch(args[1].toLowerCase())
{
	case "invincible":
		_root.StartNewMusicAndIntroNoVar("WingCap - Intro", "WingCap - Repeat");
		_root.Invincible = phStateRes(phState(args[2]), _root.Invincible)
		break;
	case "vanish":
	case "invisible":
		_root.StartNewMusicAndIntroNoVar("WingCap - Intro", "WingCap - Repeat");
		_root.Invisible = phStateRes(phState(args[2]), _root.Invisible)
		break;
	case "metal":
		_root.StartNewMusicAndIntroNoVar("MetalCap - Intro", "MetalCap - Repeat");
		_root.Metal = phStateRes(phState(args[2]), _root.Metal)
		break;
	case "wingcap":
	case "wing":
		_root.StartNewMusicAndIntroNoVar("WingCap - Intro", "WingCap - Repeat");
		_root.WingCap = phStateRes(phState(args[2]), _root.WingCap)
		break;
	case "none":
		_root.PowerTimer = -1
		break;
	case "default":
		respond("Unknown cap.")
}

if (args[3] == undefined)
{
	_root.PowerTimer = 10000
}
else
{
	_root.PowerTimer = parseFloat(args[3])
}