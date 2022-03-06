//warp;w|STRING:room_code;*STRING:transition_type;*BOOL:reset_music^Warps the player to the specified room.
if(args[2] === undefined)
{
	a = "StarIn"
	b = undefined
}
else if(args[3] === undefined)
{
	if(phBool(args[2]) === undefined)
	{
		var a = args[2]
		var b = undefined
	}
	else
	{
		a = "StarIn"
		b = args[2]
	}
}
else
{
	a = args[2]
	b = args[3]
}
_root.changecourse(a, args[1], 0, 0, 0, 0, b)
_root.Course.Char.attackFrame = "none"
_root.warpframe = false
requestReset = 2
respond("Warped to " + args[1] + ".")