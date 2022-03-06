//showwarps;sw|phSTATE^Shows or hides warps (displayed as a black rectangle).
var state = phState(args[1])
var bool = phStateRes(state, _root.Course.BackGFX.warp1._visible)
for (i = 1; i < 8; i++) {
	_root.Course.BackGFX["warp" + i]._visible = bool
}
switch(state)
{
	case 1: //on
		respond("Show Warps: ON")
		break;
	case 0: //off
		respond("Show Warps: OFF")
		break;
	case -1: //toggle
		if (bool)
		{
			respond("Show Warps: ON [toggle]")
		}
		else
		{
			respond("Show Warps: OFF [toggle]")
		}
		break;
}