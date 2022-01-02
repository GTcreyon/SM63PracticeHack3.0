//noclip;nc|phSTATE^Enables or disables NoClip.
switch(phState(args[1]))
{
	case 1: //on
		tempCourseScale = _root.coursescale2;
		_root.coursescale2 = NaN;
		respond("NoClip: ON")
		break;
	case 0: //off
		if (tempCourseScale !== undefined)
		{
			_root.coursescale2 = tempCourseScale;
		}
		else if (isNaN(_root.coursescale2))
		{
			_root.coursescale2 = 1
		}
		respond("NoClip: OFF")
		break;
	case -1: //toggle
		if (isNaN(_root.coursescale2))
		{
			if (tempCourseScale !== undefined)
			{
				_root.coursescale2 = tempCourseScale;
			}
			else
			{
				_root.coursescale2 = 1
			}
			respond("NoClip: OFF [toggle]")
		}
		else
		{
			tempCourseScale = _root.coursescale2;
			_root.coursescale2 = NaN;
			respond("NoClip: ON [toggle]")
		}
		break;
}