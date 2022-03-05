//fludd;nozzle|OPTION[all/hover/rocket/turbo],phSTATE^Sets the availability state of FLUDD nozzles.
var state = phState(args[2]);
switch(state)
{
	case 0:
		var msg = "set to false";
		break;
	case 1:
		msg = "set to true";
		break;
	case -1:
		msg = "toggled";
		break;
}

var a = args[1].toLowerCase()
if(a == "all")
{
	_root.SaveFluddH = phStateRes(state, _root.SaveFluddH);
	_root.SaveFluddR = phStateRes(state, _root.SaveFluddR);
	_root.SaveFluddT = phStateRes(state, _root.SaveFluddT);
	respond("All FLUDD nozzles have been " + msg + ".");
}
else if(a == "h" || a == "hover")
{
	_root.SaveFluddH = phStateRes(state, _root.SaveFluddH);
	respond("Hover FLUDD has been " + msg + ".");
}
else if(a == "r" || a == "rocket")
{
	_root.SaveFluddR = phStateRes(state, _root.SaveFluddR);
	respond("Rocket FLUDD has been " + msg + ".");
}
else if(a == "t" || a == "turbo")
{
	_root.SaveFluddT = phStateRes(state, _root.SaveFluddT);
	respond("Turbo FLUDD has been " + msg + ".");
}
else
{
	respond("Unknown nozzle.");
}