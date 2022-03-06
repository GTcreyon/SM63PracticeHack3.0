//setvelocity;setspeed;setvel;vel;speed;sv|OPTION[x/NUMBER],OPTION[y/NUMBER]^Sets the player's velocity.
var x = args[1]
var y = args[2]
if(x == "x")
{
	x = _root.Course.Char.xspeed
} else {
	x = Number(x)
}
if(y == "y")
{
	y = _root.Course.Char.yspeed
} else {
	y = Number(y)
}
_root.Course.Char.xspeed = x
_root.Course.Char.yspeed = y
respond("Velocity set to (" + x + ", " + y + ").")