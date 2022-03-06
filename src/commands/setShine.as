//setshine;setstar;shine;star;s|NUMBER,phBOOL^Sets the state of the given shine ID.
var bool = phBool(args[2])
_root.Star[args[1]] = bool
respond("Shine " + args[1] + " set to " + bool + ".")
_root.CalculateStars()