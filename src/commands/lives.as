//lives|OPTION[NUMBER/infinity]^Sets the extra life counter.
if (args[1] == "infinite" || args[1] == "infinity" || args[1] == "inf") {
	_root.CharLives = NaN
	respond("Lives are now infinite.")
} else {
	_root.CharLives = Number(args[1])
	respond("Lives have been set to " + _root.CharLives + ".")
}