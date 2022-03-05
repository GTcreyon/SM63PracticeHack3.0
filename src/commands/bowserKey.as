//bowserkey;key;bk|NUMBER^Sets the state of a Bowser key.
var state = phState(args[2])
switch(args[1])
{
	case "1":
		var res = phStateRes(state, _root.BowserKey1)
		_root.BowserKey1 = res
		break;
	case "2":
		res = phStateRes(state, _root.BowserKey2)
		_root.BowserKey2 = res
		break;
	case "3":
		res = phStateRes(state, _root.BowserKey3)
		_root.BowserKey3 = res
		break;
}

if(res)
{
	var msg = "ON"
}
else
{
	msg = "OFF"
}

if(state == -1)
{
	msg += " [toggle]"
}
respond("Key " + args[1] + " " + msg + ".")